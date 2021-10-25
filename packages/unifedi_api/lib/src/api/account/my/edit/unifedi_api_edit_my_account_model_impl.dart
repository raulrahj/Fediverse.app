import 'package:fediverse_api/fediverse_api_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../field/unifedi_api_field_model_impl.dart';
import 'unifedi_api_edit_my_account_model.dart';

// ignore_for_file: no-magic-number

part 'unifedi_api_edit_my_account_model_impl.freezed.dart';

part 'unifedi_api_edit_my_account_model_impl.g.dart';

@HiveType(typeId: 0)
@freezed
class UnifediApiEditMyAccount
    with _$UnifediApiEditMyAccount
    implements IUnifediApiEditMyAccount {
  const factory UnifediApiEditMyAccount({
    @JsonKey(name: 'fields_attributes')
    @HiveField(1)
        required List<UnifediApiField>? fieldsAttributes,
    @HiveField(2) required bool? discoverable,
    @HiveField(3) required bool? bot,
    @JsonKey(name: 'display_name') @HiveField(4) required String? displayName,
    @HiveField(5) required String? note,
    @HiveField(6) required bool? locked,
    @HiveField(7) required String? privacy,
    @HiveField(8) required bool? sensitive,
    @HiveField(9) required String? language,
    @JsonKey(name: 'avatar_local_file_path')
    @HiveField(10)
        required String? avatarLocalFilePath,
    @JsonKey(name: 'delete_avatar') @HiveField(11) required bool? deleteAvatar,
    @JsonKey(name: 'header_local_file_path')
    @HiveField(12)
        required String? headerLocalFilePath,
    @JsonKey(name: 'delete_header') @HiveField(13) required bool? deleteHeader,
    @JsonKey(name: 'no_rich_text') @HiveField(14) required bool? noRichText,
    @JsonKey(name: 'hide_followers')
    @HiveField(15)
        required bool? hideFollowers,
    @JsonKey(name: 'hide_follows') @HiveField(16) required bool? hideFollows,
    @JsonKey(name: 'hide_followers_count')
    @HiveField(17)
        required bool? hideFollowersCount,
    @JsonKey(name: 'hide_follows_count')
    @HiveField(18)
        required bool? hideFollowsCount,
    @JsonKey(name: 'hide_favorites')
    @HiveField(19)
        required bool? hideFavorites,
    @JsonKey(name: 'show_role') @HiveField(20) required bool? showRole,
    @JsonKey(name: 'default_scope')
    @HiveField(21)
        required String? defaultScope,
    @JsonKey(name: 'settings_store')
    @HiveField(22)
        required Map<String, dynamic>? settingsStore,
    @JsonKey(name: 'skip_thread_containment')
    @HiveField(23)
        required bool? skipThreadContainment,
    @JsonKey(name: 'allow_following_move')
    @HiveField(24)
        required bool? allowFollowingMove,
    @JsonKey(name: 'accepts_chat_messages')
    @HiveField(25)
        required bool? acceptsChatMessages,
    @JsonKey(name: 'also_known_as')
    @HiveField(26)
        required List<String>? alsoKnownAs,
    @JsonKey(name: 'background_image_local_file_path')
    @HiveField(27)
        required String? backgroundImageLocalFilePath,
    @JsonKey(name: 'delete_background_image')
    @HiveField(28)
        required bool? deleteBackgroundImage,
  }) = _UnifediApiEditMyAccount;

  factory UnifediApiEditMyAccount.fromJson(Map<String, dynamic> json) =>
      _$UnifediApiEditMyAccountFromJson(json);
}

extension IUnifediApiEditMyAccountExtension on IUnifediApiEditMyAccount {
  UnifediApiEditMyAccount toUnifediApiEditMyAccount({
    bool forceNewObject = false,
  }) =>
      InterfaceToImplHelper.interfaceToImpl(
        this,
        (_) => UnifediApiEditMyAccount(
          fieldsAttributes: fieldsAttributes?.toUnifediApiFieldList(),
          discoverable: discoverable,
          bot: bot,
          displayName: displayName,
          note: note,
          locked: locked,
          privacy: privacy,
          sensitive: sensitive,
          language: language,
          avatarLocalFilePath: avatarLocalFilePath,
          deleteAvatar: deleteAvatar,
          headerLocalFilePath: headerLocalFilePath,
          deleteHeader: deleteHeader,
          noRichText: noRichText,
          hideFollowers: hideFollowers,
          hideFollows: hideFollows,
          hideFollowersCount: hideFollowersCount,
          hideFollowsCount: hideFollowsCount,
          hideFavorites: hideFavorites,
          showRole: showRole,
          defaultScope: defaultScope,
          settingsStore: settingsStore,
          skipThreadContainment: skipThreadContainment,
          allowFollowingMove: allowFollowingMove,
          acceptsChatMessages: acceptsChatMessages,
          alsoKnownAs: alsoKnownAs,
          backgroundImageLocalFilePath: backgroundImageLocalFilePath,
          deleteBackgroundImage: deleteBackgroundImage,
        ),
        forceNewObject: forceNewObject,
      );
}
