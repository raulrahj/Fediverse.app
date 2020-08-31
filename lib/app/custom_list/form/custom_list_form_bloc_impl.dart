import 'package:fedi/app/custom_list/form/custom_list_form_bloc.dart';
import 'package:fedi/ui/form/field/value/string/form_non_empty_string_field_validation.dart';
import 'package:fedi/ui/form/field/value/string/form_string_field_bloc_impl.dart';
import 'package:fedi/ui/form/form_bloc_impl.dart';
import 'package:fedi/ui/form/form_item_bloc.dart';
import 'package:flutter/widgets.dart';

class CustomListFormBloc extends FormBloc implements ICustomListFormBloc {
  @override
  final FormStringFieldBloc titleField;

  CustomListFormBloc({@required String initialTitleValue})
      : titleField = FormStringFieldBloc(
            originValue: initialTitleValue,
            validators: [
              NonEmptyStringFieldValidationError.createValidator()
            ]) {
    addDisposable(disposable: titleField);
  }

  @override
  void clear() {
    titleField.clear();
  }

  @override
  List<IFormItemBloc> get items => [titleField];
}