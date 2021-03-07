import 'package:fedi/app/async/pleroma_async_operation_helper.dart';
import 'package:fedi/app/database/app_database.dart';
import 'package:fedi/app/status/draft/list/draft_status_list_page.dart';
import 'package:fedi/app/status/draft/repository/draft_status_repository.dart';
import 'package:fedi/app/status/post/new/new_post_status_page.dart';
import 'package:fedi/app/status/post/post_status_model.dart';
import 'package:fedi/app/status/status_bloc.dart';
import 'package:fedi/app/ui/dialog/alert/fedi_base_alert_dialog.dart';
import 'package:fedi/dialog/dialog_model.dart';
import 'package:fedi/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

Future<T> showStatusActionDeleteDialog<T>({
  @required BuildContext context,
  @required IStatusBloc statusBloc,
}) =>
    StatusActionDeleteDialog(
      actionsBorderVisible: false,
      title: S.of(context).app_status_delete_dialog_title,
      actionsAxis: Axis.vertical,
      cancelable: true,
      actions: [
        DialogAction(
          label: S.of(context).app_status_delete_dialog_action_delete,
          onAction: (context) async {
            await PleromaAsyncOperationHelper.performPleromaAsyncOperation(
              context: context,
              asyncCode: () => statusBloc.delete(),
            );

            Navigator.pop(context);
          },
        ),
        DialogAction(
          label: S
              .of(context)
              .app_status_delete_dialog_action_deleteAndSaveToDrafts,
          onAction: (context) async {
            var dialogResult =
                await PleromaAsyncOperationHelper.performPleromaAsyncOperation(
              context: context,
              asyncCode: () => statusBloc.delete(),
            );

            if (dialogResult.success) {
              await Navigator.pop(context);

              var postStatusData = statusBloc.status.calculatePostStatusData();

              var draftStatusRepository =
                  IDraftStatusRepository.of(context, listen: false);

              await draftStatusRepository.upsert(
                DbDraftStatus(
                  data: postStatusData,
                  updatedAt: DateTime.now(),
                  id: null,
                ),
              );

              // delay to be sure pop already finished, it looks like bug in flutter
              Future.delayed(
                Duration(milliseconds: 100),
                () {
                  goToDraftStatusListPage(context);
                },
              );
            }
          },
        ),
        DialogAction(
          label:
              S.of(context).app_status_delete_dialog_action_deleteAndStartNew,
          onAction: (context) async {
            var dialogResult =
                await PleromaAsyncOperationHelper.performPleromaAsyncOperation(
              context: context,
              asyncCode: () => statusBloc.delete(),
            );

            if (dialogResult.success) {
              await Navigator.pop(context);

              var postStatusData = statusBloc.status.calculatePostStatusData();

              // delay to be sure pop already finished, it looks like bug in flutter
              Future.delayed(
                Duration(milliseconds: 100),
                () {
                  goToNewPostStatusPage(
                    context,
                    initialData: postStatusData,
                  );
                },
              );
            }
          },
        ),
      ],
      contentText: null,
    ).show(context);

class StatusActionDeleteDialog extends FediBaseAlertDialog {
  StatusActionDeleteDialog({
    @required String title,
    @required List<DialogAction> actions,
    @required String contentText,
    Axis actionsAxis = Axis.horizontal,
    bool cancelable = true,
    bool actionsBorderVisible = true,
  }) : super(
          title: title,
          contentText: contentText,
          actions: actions,
          actionsAxis: actionsAxis,
          cancelable: cancelable,
          actionsBorderVisible: actionsBorderVisible,
        );
}