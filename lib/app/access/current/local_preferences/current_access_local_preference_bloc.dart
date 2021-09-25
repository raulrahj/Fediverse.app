import 'package:fedi/local_preferences/local_preference_bloc_impl.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:unifedi_api/unifedi_api.dart';

abstract class ICurrentUnifediApiAccessLocalPreferenceBlocOld
    implements LocalPreferenceBloc<UnifediApiAccess?> {
  static ICurrentUnifediApiAccessLocalPreferenceBlocOld of(
    BuildContext context, {
    bool listen = true,
  }) =>
      Provider.of<ICurrentUnifediApiAccessLocalPreferenceBlocOld>(
        context,
        listen: listen,
      );
}
