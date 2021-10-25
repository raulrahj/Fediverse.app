import 'package:fediverse_api/fediverse_api_mock_helper.dart';

import 'pleroma_api_card_replies_policy_type_sealed.dart';

abstract class PleromaApiListRepliesPolicyTypeMockHelper {
  static PleromaApiListRepliesPolicyType generate({
    required String seed,
  }) =>
      EnumMockHelper.generate(
        seed: seed,
        values: PleromaApiListRepliesPolicyType.values,
      );
}
