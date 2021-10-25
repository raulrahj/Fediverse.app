// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pleroma_api_frontend_configurations_model_impl.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PleromaApiFrontendConfigurationsAdapter
    extends TypeAdapter<PleromaApiFrontendConfigurations> {
  @override
  final int typeId = 0;

  @override
  PleromaApiFrontendConfigurations read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PleromaApiFrontendConfigurations(
      mastoFe: fields[0] as PleromaApiFrontendConfigurationsMastoFe?,
      pleromaFe: fields[1] as PleromaApiFrontendConfigurationsPleromaFe?,
      soapboxFe: fields[2] as PleromaApiFrontendConfigurationsSoapboxFe?,
    );
  }

  @override
  void write(BinaryWriter writer, PleromaApiFrontendConfigurations obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.mastoFe)
      ..writeByte(1)
      ..write(obj.pleromaFe)
      ..writeByte(2)
      ..write(obj.soapboxFe);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PleromaApiFrontendConfigurationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PleromaApiFrontendConfigurationsMastoFeAdapter
    extends TypeAdapter<PleromaApiFrontendConfigurationsMastoFe> {
  @override
  final int typeId = 0;

  @override
  PleromaApiFrontendConfigurationsMastoFe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PleromaApiFrontendConfigurationsMastoFe(
      showInstanceSpecificPanel: fields[0] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, PleromaApiFrontendConfigurationsMastoFe obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.showInstanceSpecificPanel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PleromaApiFrontendConfigurationsMastoFeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PleromaApiFrontendConfigurationsPleromaFeAdapter
    extends TypeAdapter<PleromaApiFrontendConfigurationsPleromaFe> {
  @override
  final int typeId = 0;

  @override
  PleromaApiFrontendConfigurationsPleromaFe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PleromaApiFrontendConfigurationsPleromaFe(
      alwaysShowSubjectInput: fields[0] as bool?,
      background: fields[1] as String?,
      collapseMessageWithSubject: fields[2] as bool?,
      disableChat: fields[3] as bool?,
      greentext: fields[4] as bool?,
      hideFilteredStatuses: fields[5] as bool?,
      hideMutedPosts: fields[6] as bool?,
      hidePostStats: fields[7] as bool?,
      hideUserStats: fields[8] as bool?,
      loginMethod: fields[9] as String?,
      logo: fields[10] as String?,
      logoMargin: fields[11] as String?,
      logoMask: fields[12] as bool?,
      minimalScopesMode: fields[13] as bool?,
      noAttachmentLinks: fields[14] as bool?,
      nsfwCensorImage: fields[15] as String?,
      postContentType: fields[16] as String?,
      redirectRootLogin: fields[17] as String?,
      redirectRootNoLogin: fields[18] as String?,
      scopeCopy: fields[19] as bool?,
      showFeaturesPanel: fields[20] as bool?,
      showInstanceSpecificPanel: fields[21] as bool?,
      sidebarRight: fields[22] as bool?,
      subjectLineBehavior: fields[23] as String?,
      theme: fields[24] as String?,
      webPushNotifications: fields[25] as bool?,
    );
  }

  @override
  void write(
      BinaryWriter writer, PleromaApiFrontendConfigurationsPleromaFe obj) {
    writer
      ..writeByte(26)
      ..writeByte(0)
      ..write(obj.alwaysShowSubjectInput)
      ..writeByte(1)
      ..write(obj.background)
      ..writeByte(2)
      ..write(obj.collapseMessageWithSubject)
      ..writeByte(3)
      ..write(obj.disableChat)
      ..writeByte(4)
      ..write(obj.greentext)
      ..writeByte(5)
      ..write(obj.hideFilteredStatuses)
      ..writeByte(6)
      ..write(obj.hideMutedPosts)
      ..writeByte(7)
      ..write(obj.hidePostStats)
      ..writeByte(8)
      ..write(obj.hideUserStats)
      ..writeByte(9)
      ..write(obj.loginMethod)
      ..writeByte(10)
      ..write(obj.logo)
      ..writeByte(11)
      ..write(obj.logoMargin)
      ..writeByte(12)
      ..write(obj.logoMask)
      ..writeByte(13)
      ..write(obj.minimalScopesMode)
      ..writeByte(14)
      ..write(obj.noAttachmentLinks)
      ..writeByte(15)
      ..write(obj.nsfwCensorImage)
      ..writeByte(16)
      ..write(obj.postContentType)
      ..writeByte(17)
      ..write(obj.redirectRootLogin)
      ..writeByte(18)
      ..write(obj.redirectRootNoLogin)
      ..writeByte(19)
      ..write(obj.scopeCopy)
      ..writeByte(20)
      ..write(obj.showFeaturesPanel)
      ..writeByte(21)
      ..write(obj.showInstanceSpecificPanel)
      ..writeByte(22)
      ..write(obj.sidebarRight)
      ..writeByte(23)
      ..write(obj.subjectLineBehavior)
      ..writeByte(24)
      ..write(obj.theme)
      ..writeByte(25)
      ..write(obj.webPushNotifications);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PleromaApiFrontendConfigurationsPleromaFeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PleromaApiFrontendConfigurationsSoapboxFeAdapter
    extends TypeAdapter<PleromaApiFrontendConfigurationsSoapboxFe> {
  @override
  final int typeId = 0;

  @override
  PleromaApiFrontendConfigurationsSoapboxFe read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PleromaApiFrontendConfigurationsSoapboxFe(
      brandColor: fields[0] as String?,
    );
  }

  @override
  void write(
      BinaryWriter writer, PleromaApiFrontendConfigurationsSoapboxFe obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.brandColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PleromaApiFrontendConfigurationsSoapboxFeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PleromaApiFrontendConfigurations
    _$$_PleromaApiFrontendConfigurationsFromJson(Map<String, dynamic> json) =>
        _$_PleromaApiFrontendConfigurations(
          mastoFe: json['masto_fe'] == null
              ? null
              : PleromaApiFrontendConfigurationsMastoFe.fromJson(
                  json['masto_fe'] as Map<String, dynamic>),
          pleromaFe: json['pleroma_fe'] == null
              ? null
              : PleromaApiFrontendConfigurationsPleromaFe.fromJson(
                  json['pleroma_fe'] as Map<String, dynamic>),
          soapboxFe: json['soapbox_fe'] == null
              ? null
              : PleromaApiFrontendConfigurationsSoapboxFe.fromJson(
                  json['soapbox_fe'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_PleromaApiFrontendConfigurationsToJson(
    _$_PleromaApiFrontendConfigurations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('masto_fe', instance.mastoFe?.toJson());
  writeNotNull('pleroma_fe', instance.pleromaFe?.toJson());
  writeNotNull('soapbox_fe', instance.soapboxFe?.toJson());
  return val;
}

_$_PleromaApiFrontendConfigurationsMastoFe
    _$$_PleromaApiFrontendConfigurationsMastoFeFromJson(
            Map<String, dynamic> json) =>
        _$_PleromaApiFrontendConfigurationsMastoFe(
          showInstanceSpecificPanel: json['showInstanceSpecificPanel'] as bool?,
        );

Map<String, dynamic> _$$_PleromaApiFrontendConfigurationsMastoFeToJson(
    _$_PleromaApiFrontendConfigurationsMastoFe instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('showInstanceSpecificPanel', instance.showInstanceSpecificPanel);
  return val;
}

_$_PleromaApiFrontendConfigurationsPleromaFe
    _$$_PleromaApiFrontendConfigurationsPleromaFeFromJson(
            Map<String, dynamic> json) =>
        _$_PleromaApiFrontendConfigurationsPleromaFe(
          alwaysShowSubjectInput: json['alwaysShowSubjectInput'] as bool?,
          background: json['background'] as String?,
          collapseMessageWithSubject:
              json['collapseMessageWithSubject'] as bool?,
          disableChat: json['disableChat'] as bool?,
          greentext: json['greentext'] as bool?,
          hideFilteredStatuses: json['hideFilteredStatuses'] as bool?,
          hideMutedPosts: json['hideMutedPosts'] as bool?,
          hidePostStats: json['hidePostStats'] as bool?,
          hideUserStats: json['hideUserStats'] as bool?,
          loginMethod: json['loginMethod'] as String?,
          logo: json['logo'] as String?,
          logoMargin: json['logoMargin'] as String?,
          logoMask: json['logoMask'] as bool?,
          minimalScopesMode: json['minimalScopesMode'] as bool?,
          noAttachmentLinks: json['noAttachmentLinks'] as bool?,
          nsfwCensorImage: json['nsfwCensorImage'] as String?,
          postContentType: json['postContentType'] as String?,
          redirectRootLogin: json['redirectRootLogin'] as String?,
          redirectRootNoLogin: json['redirectRootNoLogin'] as String?,
          scopeCopy: json['scopeCopy'] as bool?,
          showFeaturesPanel: json['showFeaturesPanel'] as bool?,
          showInstanceSpecificPanel: json['showInstanceSpecificPanel'] as bool?,
          sidebarRight: json['sidebarRight'] as bool?,
          subjectLineBehavior: json['subjectLineBehavior'] as String?,
          theme: json['theme'] as String?,
          webPushNotifications: json['webPushNotifications'] as bool?,
        );

Map<String, dynamic> _$$_PleromaApiFrontendConfigurationsPleromaFeToJson(
    _$_PleromaApiFrontendConfigurationsPleromaFe instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alwaysShowSubjectInput', instance.alwaysShowSubjectInput);
  writeNotNull('background', instance.background);
  writeNotNull(
      'collapseMessageWithSubject', instance.collapseMessageWithSubject);
  writeNotNull('disableChat', instance.disableChat);
  writeNotNull('greentext', instance.greentext);
  writeNotNull('hideFilteredStatuses', instance.hideFilteredStatuses);
  writeNotNull('hideMutedPosts', instance.hideMutedPosts);
  writeNotNull('hidePostStats', instance.hidePostStats);
  writeNotNull('hideUserStats', instance.hideUserStats);
  writeNotNull('loginMethod', instance.loginMethod);
  writeNotNull('logo', instance.logo);
  writeNotNull('logoMargin', instance.logoMargin);
  writeNotNull('logoMask', instance.logoMask);
  writeNotNull('minimalScopesMode', instance.minimalScopesMode);
  writeNotNull('noAttachmentLinks', instance.noAttachmentLinks);
  writeNotNull('nsfwCensorImage', instance.nsfwCensorImage);
  writeNotNull('postContentType', instance.postContentType);
  writeNotNull('redirectRootLogin', instance.redirectRootLogin);
  writeNotNull('redirectRootNoLogin', instance.redirectRootNoLogin);
  writeNotNull('scopeCopy', instance.scopeCopy);
  writeNotNull('showFeaturesPanel', instance.showFeaturesPanel);
  writeNotNull('showInstanceSpecificPanel', instance.showInstanceSpecificPanel);
  writeNotNull('sidebarRight', instance.sidebarRight);
  writeNotNull('subjectLineBehavior', instance.subjectLineBehavior);
  writeNotNull('theme', instance.theme);
  writeNotNull('webPushNotifications', instance.webPushNotifications);
  return val;
}

_$_PleromaApiFrontendConfigurationsSoapboxFe
    _$$_PleromaApiFrontendConfigurationsSoapboxFeFromJson(
            Map<String, dynamic> json) =>
        _$_PleromaApiFrontendConfigurationsSoapboxFe(
          brandColor: json['brandColor'] as String?,
        );

Map<String, dynamic> _$$_PleromaApiFrontendConfigurationsSoapboxFeToJson(
    _$_PleromaApiFrontendConfigurationsSoapboxFe instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brandColor', instance.brandColor);
  return val;
}
