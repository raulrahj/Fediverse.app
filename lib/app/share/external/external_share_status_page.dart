import 'package:easy_localization/easy_localization.dart';
import 'package:fedi/app/share/external/external_share_as_link_field_widget.dart';
import 'package:fedi/app/share/external/external_share_status_bloc_impl.dart';
import 'package:fedi/app/share/status/share_status_with_message_widget.dart';
import 'package:fedi/app/status/status_bloc.dart';
import 'package:fedi/app/status/status_bloc_impl.dart';
import 'package:fedi/app/status/status_model.dart';
import 'package:fedi/app/ui/fedi_padding.dart';
import 'package:fedi/app/ui/page/fedi_sub_page_title_app_bar.dart';
import 'package:fedi/disposable/disposable_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExternalShareStatusPage extends StatelessWidget {
  final IStatus status;

  ExternalShareStatusPage({@required this.status});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: FediSubPageTitleAppBar(
          title: "app.share.external.title".tr(),
        ),
        body: ShareStatusWithMessageWidget(
          status: status,
          header: Padding(
            padding: FediPadding.horizontalSmallPadding,
            child: ExternalShareAsLinkFieldWidget(),
          ),
        ),
      );
}

void goToExternalShareStatusPage(
    {@required BuildContext context, @required IStatus status}) {
  Navigator.push(
    context,
    createExternalShareStatusPageRoute(
      context: context,
      status: status,
    ),
  );
}

MaterialPageRoute createExternalShareStatusPageRoute({
  @required BuildContext context,
  @required IStatus status,
}) {
  return MaterialPageRoute(
    builder: (context) => ExternalShareStatusBloc.provideToContext(
      context,
      status: status,
      child: Provider.value(
        value: status,
        child: DisposableProxyProvider<IStatus, IStatusBloc>(
          update: (context, value, previous) =>
              StatusBloc.createFromContext(context, status),
          child: ExternalShareStatusPage(
            status: status,
          ),
        ),
      ),
      popupTitle: "app.share.external.title".tr(),
    ),
  );
}
