import 'package:fedi/app/ui/theme/fedi_ui_theme_model.dart';
import 'package:flutter/cupertino.dart';

class RegisterUnifediApiAccessFormStepperItemDescriptionWidget
    extends StatelessWidget {
  final String text;

  const RegisterUnifediApiAccessFormStepperItemDescriptionWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: IFediUiTextTheme.of(context).bigTallDarkGrey,
      );
}
