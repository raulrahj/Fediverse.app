// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unifedi_api_push_subscription_model_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnifediApiPushSubscription _$UnifediApiPushSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _UnifediApiPushSubscription.fromJson(json);
}

/// @nodoc
class _$UnifediApiPushSubscriptionTearOff {
  const _$UnifediApiPushSubscriptionTearOff();

  _UnifediApiPushSubscription call(
      {@HiveField(0) required String id,
      @HiveField(1) required String endpoint,
      @HiveField(2) required UnifediApiPushSubscriptionAlerts alerts,
      @HiveField(3) @JsonKey(name: 'server_key') required String serverKey}) {
    return _UnifediApiPushSubscription(
      id: id,
      endpoint: endpoint,
      alerts: alerts,
      serverKey: serverKey,
    );
  }

  UnifediApiPushSubscription fromJson(Map<String, Object> json) {
    return UnifediApiPushSubscription.fromJson(json);
  }
}

/// @nodoc
const $UnifediApiPushSubscription = _$UnifediApiPushSubscriptionTearOff();

/// @nodoc
mixin _$UnifediApiPushSubscription {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get endpoint => throw _privateConstructorUsedError;
  @HiveField(2)
  UnifediApiPushSubscriptionAlerts get alerts =>
      throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'server_key')
  String get serverKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnifediApiPushSubscriptionCopyWith<UnifediApiPushSubscription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnifediApiPushSubscriptionCopyWith<$Res> {
  factory $UnifediApiPushSubscriptionCopyWith(UnifediApiPushSubscription value,
          $Res Function(UnifediApiPushSubscription) then) =
      _$UnifediApiPushSubscriptionCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String endpoint,
      @HiveField(2) UnifediApiPushSubscriptionAlerts alerts,
      @HiveField(3) @JsonKey(name: 'server_key') String serverKey});

  $UnifediApiPushSubscriptionAlertsCopyWith<$Res> get alerts;
}

/// @nodoc
class _$UnifediApiPushSubscriptionCopyWithImpl<$Res>
    implements $UnifediApiPushSubscriptionCopyWith<$Res> {
  _$UnifediApiPushSubscriptionCopyWithImpl(this._value, this._then);

  final UnifediApiPushSubscription _value;
  // ignore: unused_field
  final $Res Function(UnifediApiPushSubscription) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? endpoint = freezed,
    Object? alerts = freezed,
    Object? serverKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: endpoint == freezed
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      alerts: alerts == freezed
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as UnifediApiPushSubscriptionAlerts,
      serverKey: serverKey == freezed
          ? _value.serverKey
          : serverKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UnifediApiPushSubscriptionAlertsCopyWith<$Res> get alerts {
    return $UnifediApiPushSubscriptionAlertsCopyWith<$Res>(_value.alerts,
        (value) {
      return _then(_value.copyWith(alerts: value));
    });
  }
}

/// @nodoc
abstract class _$UnifediApiPushSubscriptionCopyWith<$Res>
    implements $UnifediApiPushSubscriptionCopyWith<$Res> {
  factory _$UnifediApiPushSubscriptionCopyWith(
          _UnifediApiPushSubscription value,
          $Res Function(_UnifediApiPushSubscription) then) =
      __$UnifediApiPushSubscriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String endpoint,
      @HiveField(2) UnifediApiPushSubscriptionAlerts alerts,
      @HiveField(3) @JsonKey(name: 'server_key') String serverKey});

  @override
  $UnifediApiPushSubscriptionAlertsCopyWith<$Res> get alerts;
}

/// @nodoc
class __$UnifediApiPushSubscriptionCopyWithImpl<$Res>
    extends _$UnifediApiPushSubscriptionCopyWithImpl<$Res>
    implements _$UnifediApiPushSubscriptionCopyWith<$Res> {
  __$UnifediApiPushSubscriptionCopyWithImpl(_UnifediApiPushSubscription _value,
      $Res Function(_UnifediApiPushSubscription) _then)
      : super(_value, (v) => _then(v as _UnifediApiPushSubscription));

  @override
  _UnifediApiPushSubscription get _value =>
      super._value as _UnifediApiPushSubscription;

  @override
  $Res call({
    Object? id = freezed,
    Object? endpoint = freezed,
    Object? alerts = freezed,
    Object? serverKey = freezed,
  }) {
    return _then(_UnifediApiPushSubscription(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: endpoint == freezed
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      alerts: alerts == freezed
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as UnifediApiPushSubscriptionAlerts,
      serverKey: serverKey == freezed
          ? _value.serverKey
          : serverKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnifediApiPushSubscription implements _UnifediApiPushSubscription {
  const _$_UnifediApiPushSubscription(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.endpoint,
      @HiveField(2) required this.alerts,
      @HiveField(3) @JsonKey(name: 'server_key') required this.serverKey});

  factory _$_UnifediApiPushSubscription.fromJson(Map<String, dynamic> json) =>
      _$$_UnifediApiPushSubscriptionFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String endpoint;
  @override
  @HiveField(2)
  final UnifediApiPushSubscriptionAlerts alerts;
  @override
  @HiveField(3)
  @JsonKey(name: 'server_key')
  final String serverKey;

  @override
  String toString() {
    return 'UnifediApiPushSubscription(id: $id, endpoint: $endpoint, alerts: $alerts, serverKey: $serverKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnifediApiPushSubscription &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.endpoint, endpoint) ||
                const DeepCollectionEquality()
                    .equals(other.endpoint, endpoint)) &&
            (identical(other.alerts, alerts) ||
                const DeepCollectionEquality().equals(other.alerts, alerts)) &&
            (identical(other.serverKey, serverKey) ||
                const DeepCollectionEquality()
                    .equals(other.serverKey, serverKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(endpoint) ^
      const DeepCollectionEquality().hash(alerts) ^
      const DeepCollectionEquality().hash(serverKey);

  @JsonKey(ignore: true)
  @override
  _$UnifediApiPushSubscriptionCopyWith<_UnifediApiPushSubscription>
      get copyWith => __$UnifediApiPushSubscriptionCopyWithImpl<
          _UnifediApiPushSubscription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnifediApiPushSubscriptionToJson(this);
  }
}

abstract class _UnifediApiPushSubscription
    implements UnifediApiPushSubscription {
  const factory _UnifediApiPushSubscription(
      {@HiveField(0)
          required String id,
      @HiveField(1)
          required String endpoint,
      @HiveField(2)
          required UnifediApiPushSubscriptionAlerts alerts,
      @HiveField(3)
      @JsonKey(name: 'server_key')
          required String serverKey}) = _$_UnifediApiPushSubscription;

  factory _UnifediApiPushSubscription.fromJson(Map<String, dynamic> json) =
      _$_UnifediApiPushSubscription.fromJson;

  @override
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get endpoint => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  UnifediApiPushSubscriptionAlerts get alerts =>
      throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(name: 'server_key')
  String get serverKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnifediApiPushSubscriptionCopyWith<_UnifediApiPushSubscription>
      get copyWith => throw _privateConstructorUsedError;
}
