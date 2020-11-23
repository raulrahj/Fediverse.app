import 'package:fedi/app/settings/global_or_instance/global_or_instance_settings_bloc.dart';
import 'package:fedi/app/settings/global_or_instance/global_or_instance_settings_model.dart';
import 'package:fedi/app/settings/settings_model.dart';
import 'package:fedi/disposable/disposable_owner.dart';
import 'package:fedi/local_preferences/local_preference_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class GlobalOrInstanceSettingsLocalPreferencesBloc<T extends ISettings>
    extends DisposableOwner implements IGlobalOrInstanceSettingsBloc<T> {
  final ILocalPreferenceBloc<T> globalLocalPreferencesBloc;
  final ILocalPreferenceBloc<T> instanceLocalPreferencesBloc;

  GlobalOrInstanceSettingsLocalPreferencesBloc({
    @required this.globalLocalPreferencesBloc,
    @required this.instanceLocalPreferencesBloc,
  });

  @override
  GlobalOrInstanceSettings<T> get globalOrInstanceSettings =>
      _calculateGlobalOrInstanceSettings(
        globalSettings: globalLocalPreferencesBloc.value,
        instanceSettings: instanceLocalPreferencesBloc.value,
      );

  @override
  Stream<GlobalOrInstanceSettings<T>> get globalOrInstanceSettingsStream =>
      Rx.combineLatest2(
        globalLocalPreferencesBloc.stream,
        instanceLocalPreferencesBloc.stream,
        (a, b) => _calculateGlobalOrInstanceSettings(
          globalSettings: a,
          instanceSettings: b,
        ),
      );

  @override
  bool get isGlobal => !isInstance;

  @override
  Stream<bool> get isGlobalStream => isInstanceStream.map(
        (isInstance) => !isInstance,
      );

  @override
  bool get isInstance => globalOrInstanceSettings.isInstance;

  @override
  Stream<bool> get isInstanceStream => globalOrInstanceSettingsStream.map(
        (globalOrInstanceSettings) => globalOrInstanceSettings.isInstance,
      );

  @override
  T get settingsData => globalOrInstanceSettings.settings;

  @override
  Stream<T> get settingsDataStream => globalOrInstanceSettingsStream.map(
        (globalOrInstanceSettings) => globalOrInstanceSettings.settings,
      );

  @override
  T get globalSettingsData => globalLocalPreferencesBloc.value;

  @override
  Stream<T> get globalSettingsDataStream => globalLocalPreferencesBloc.stream;

  @override
  T get instanceSettingsData => instanceLocalPreferencesBloc.value;

  @override
  Stream<T> get instanceSettingsDataStream =>
      instanceLocalPreferencesBloc.stream;

  GlobalOrInstanceSettings<T> _calculateGlobalOrInstanceSettings({
    @required T globalSettings,
    @required T instanceSettings,
  }) {
    GlobalOrInstanceSettings<T> result;
    var isInstance = instanceSettings != null;
    if (isInstance) {
      result = GlobalOrInstanceSettings(
        settings: instanceSettings,
        type: GlobalOrInstanceSettingsType.instance,
      );
    } else {
      result = GlobalOrInstanceSettings(
        settings: globalSettings,
        type: GlobalOrInstanceSettingsType.global,
      );
    }
    // _logger.finest(() => "_calculateGlobalOrInstanceSettings "
    //     "isInstance $isInstance \n"
    //     "result $result");
    return result;
  }

  @override
  Future clearInstanceSettings() async {
    await instanceLocalPreferencesBloc.clearValue();
  }

  @override
  Future cloneGlobalToInstanceSettings() async {
    await instanceLocalPreferencesBloc.setValue(
      globalLocalPreferencesBloc.value.clone(),
    );
  }

  @override
  Future updateInstanceSettings(T newSettings) async {
    if (instanceLocalPreferencesBloc.value != newSettings) {
      await instanceLocalPreferencesBloc.setValue(newSettings);
    }
  }

  @override
  Future updateGlobalSettings(T newSettings) async {
    if (globalLocalPreferencesBloc.value != newSettings) {
      await globalLocalPreferencesBloc.setValue(newSettings);
    }
  }

  @override
  Future updateSettings(T newSettings) async {
    if (isInstance) {
      return updateInstanceSettings(newSettings);
    } else {
      return updateGlobalSettings(newSettings);
    }
  }
}