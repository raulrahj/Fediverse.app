import 'package:fedi/ui/form/form_bool_field_bloc.dart';
import 'package:fedi/ui/form/form_value_field_bloc_impl.dart';
import 'package:flutter/widgets.dart';

class FormBoolFieldBloc extends FormValueFieldBloc<bool>
    implements IFormBoolFieldBloc {
  FormBoolFieldBloc({@required bool originValue})
      : super(originValue: originValue);
}
