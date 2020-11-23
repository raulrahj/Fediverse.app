import 'package:fedi/app/web_sockets/settings/local_preferences/web_sockets_settings_local_preference_bloc.dart';
import 'package:fedi/app/web_sockets/settings/web_sockets_settings_model.dart';
import 'package:fedi/local_preferences/local_preference_bloc_impl.dart';
import 'package:fedi/local_preferences/local_preferences_service.dart';

abstract class WebSocketsSettingsLocalPreferencesBloc
    extends ObjectLocalPreferenceBloc<WebSocketsSettings>
    implements IWebSocketsSettingsLocalPreferencesBloc {
  WebSocketsSettingsLocalPreferencesBloc(
    ILocalPreferencesService preferencesService,
    String key,
  ) : super(
          preferencesService,
          key,
          1,
          (json) => WebSocketsSettings.fromJson(json),
        );
}