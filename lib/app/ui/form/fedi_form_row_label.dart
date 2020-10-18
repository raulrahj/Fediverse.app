import 'package:fedi/app/ui/theme/fedi_ui_theme_model.dart';
import 'package:flutter/cupertino.dart';

class FediFormRowLabel extends StatelessWidget {
  final String text;

  FediFormRowLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: IFediUiTextTheme.of(context).bigTallMediumGrey,
    );
  }
}
