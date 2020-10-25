import 'package:fedi/app/ui/dialog/fedi_dialog.dart';
import 'package:fedi/app/ui/theme/fedi_ui_theme_model.dart';
import 'package:fedi/dialog/dialog_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FediBaseAlertDialog extends FediDialog {
  final String contentText;

  FediBaseAlertDialog({
    String title,
    this.contentText,
    List<DialogAction> actions,
    Axis actionsAxis = Axis.horizontal,
    bool cancelable = true,
  }) : super(
            title: title,
            actions: actions,
            actionsAxis: actionsAxis,
            cancelable: cancelable);

  @override
  Widget buildContentWidget(BuildContext context) {
    if (contentText == null) {
      return null;
    }
    return Text(
      contentText,
      style: IFediUiTextTheme.of(context).dialogContentDarkGrey,
    );
  }
}
