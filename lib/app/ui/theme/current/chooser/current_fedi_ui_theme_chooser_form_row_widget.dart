import 'package:easy_localization/easy_localization.dart';
import 'package:fedi/app/form/form_fedi_theme_field_form_row_widget.dart';
import 'package:fedi/app/ui/theme/current/chooser/current_fedi_ui_theme_chooser_bloc.dart';
import 'package:flutter/widgets.dart';

class CurrentFediUiThemeChooserFormRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentFediUiThemeChooserBloc =
        ICurrentFediUiThemeChooserBloc.of(context, listen: false);

    return FormFediThemeFieldFormRowWidget(
      field: currentFediUiThemeChooserBloc,
      label: "app.theme.chooser.label".tr(),
    );
  }
}