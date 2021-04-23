import 'dart:convert';

import 'package:fedi/pleroma/api/push/pleroma_api_push_model.dart';
import 'package:fedi/push/push_model.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

// ignore_for_file: no-magic-number
part 'push_handler_model.g.dart';

// -32 is hack for hive 0.x backward ids compatibility
// see reservedIds in Hive,
// which not exist in Hive 0.x
//@HiveType()
@HiveType(typeId: -32 + 66)
@JsonSerializable(explicitToJson: true)
class PushHandlerMessage {
  @HiveField(0)
  final PleromaPushMessageBody body;
  @HiveField(1)
  @JsonKey(name: "push_message")
  final PushMessage pushMessage;

  PushHandlerMessage({
    required this.body,
    required this.pushMessage,
  });

  @override
  String toString() {
    return 'PushHandlerMessage{'
        'body: $body, '
        'pushMessage: $pushMessage'
        '}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PushHandlerMessage &&
          runtimeType == other.runtimeType &&
          body == other.body &&
          pushMessage == other.pushMessage;

  PushHandlerMessage copyWith({
    PleromaPushMessageBody? body,
    PushMessage? pushMessage,
  }) =>
      PushHandlerMessage(
        body: body ?? this.body,
        pushMessage: pushMessage ?? this.pushMessage,
      );

  @override
  int get hashCode => body.hashCode ^ pushMessage.hashCode;

  factory PushHandlerMessage.fromJson(Map<String, dynamic> json) =>
      _$PushHandlerMessageFromJson(json);

  factory PushHandlerMessage.fromJsonString(String jsonString) =>
      _$PushHandlerMessageFromJson(jsonDecode(jsonString));

  static List<PushHandlerMessage> listFromJsonString(String str) =>
      List<PushHandlerMessage>.from(
        json.decode(str).map((x) => PushHandlerMessage.fromJson(x)),
      );

  Map<String, dynamic> toJson() => _$PushHandlerMessageToJson(this);

  String toJsonString() => jsonEncode(_$PushHandlerMessageToJson(this));
}
