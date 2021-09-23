import 'package:fedi/app/auth/instance/local_preferences/auth_instance_local_preference_bloc.dart';
import 'package:fedi/local_preferences/local_preference_bloc_impl.dart';
import 'package:fedi/local_preferences/local_preferences_service.dart';
import 'package:unifedi_api/unifedi_api.dart';

class UnifediApiAccessLocalPreferenceBloc
    extends ObjectLocalPreferenceBloc<UnifediApiAccess?>
    implements IUnifediApiAccessLocalPreferenceBloc {
  static const UnifediApiAccess? defaultValue = null;

  UnifediApiAccessLocalPreferenceBloc({
    required ILocalPreferencesService preferencesService,
    required String userAtHost,
  }) : super(
          preferencesService: preferencesService,
          key: '$userAtHost.instance',
          schemaVersion: 1,
          jsonConverter: (json) => UnifediApiAccess.fromJson(json),
        );

  @override
  UnifediApiAccess? get defaultPreferenceValue => defaultValue;
}
