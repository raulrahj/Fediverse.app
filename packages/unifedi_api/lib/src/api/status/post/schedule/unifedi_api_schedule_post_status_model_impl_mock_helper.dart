import 'package:fediverse_api/fediverse_api_mock_helper.dart';

import './unifedi_api_schedule_post_status_model_impl.dart';
import '../../../visibility/unifedi_api_visibility_sealed_mock_helper.dart';
import '../poll/unifedi_api_post_status_poll_model_impl_mock_helper.dart';
import 'unifedi_api_schedule_post_status_model_impl.dart';

// ignore_for_file: no-magic-number, no-equal-arguments
class UnifediApiSchedulePostStatusMockHelper {
  static UnifediApiSchedulePostStatus generate({
    required String seed,
  }) =>
      UnifediApiSchedulePostStatus(
        contentType: seed + 'contentType',
        expiresInSeconds: DurationMockHelper.generate(seed: seed).inSeconds,
        inReplyToConversationId: seed + 'inReplyToConversationId',
        inReplyToId: seed + 'inReplyToId',
        language: seed + 'language',
        visibility: UnifediApiVisibilityMockHelper.generate(
          seed: seed,
        ).stringValue,
        mediaIds: [
          seed + '1',
          seed + '2',
        ],
        poll: UnifediApiPostStatusPollMockHelper.generate(seed: seed),
        preview: seed.hashCode % 2 == 0,
        sensitive: seed.hashCode % 2 == 1,
        spoilerText: seed + 'spoilerText',
        status: seed + 'status',
        to: [
          seed + '11',
          seed + '22',
        ],
        scheduledAt: DateTimeMockHelper.generate(seed: seed),
      );
}
