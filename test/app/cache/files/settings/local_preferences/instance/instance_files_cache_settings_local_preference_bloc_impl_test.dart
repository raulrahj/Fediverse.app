// ignore_for_file: unnecessary_lambdas

import 'package:fedi/app/cache/files/settings/files_cache_settings_model.dart';
import 'package:fedi/app/cache/files/settings/local_preferences/instance/instance_files_cache_settings_local_preference_bloc_impl.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../../local_preferences/local_preferences_test_helper.dart';
import '../../files_cache_settings_model_test_helper.dart';

// ignore_for_file: no-magic-number

void main() {
  test('save & load', () async {
    await LocalPreferencesMockHelper.testSaveAndLoad<FilesCacheSettings,
        InstanceFilesCacheSettingsLocalPreferenceBloc>(
      defaultValue: InstanceFilesCacheSettingsLocalPreferenceBloc.defaultValue,
      blocCreator: (localPreferencesService) =>
          InstanceFilesCacheSettingsLocalPreferenceBloc(
        localPreferencesService,
        userAtHost: 'user@host',
      ),
      testObjectCreator: ({required String seed}) =>
          FilesCacheSettingsModelMockHelper.createTestFilesCacheSettings(
        seed: seed,
      ),
    );
  });
}
