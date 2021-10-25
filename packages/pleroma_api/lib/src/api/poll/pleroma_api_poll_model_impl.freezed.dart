// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pleroma_api_poll_model_impl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PleromaApiPoll _$PleromaApiPollFromJson(Map<String, dynamic> json) {
  return _PleromaApiPoll.fromJson(json);
}

/// @nodoc
class _$PleromaApiPollTearOff {
  const _$PleromaApiPollTearOff();

  _PleromaApiPoll call(
      {@HiveField(0) required bool expired,
      @HiveField(1) @JsonKey(name: 'expires_at') required DateTime? expiresAt,
      @HiveField(2) required String? id,
      @HiveField(3) required bool multiple,
      @HiveField(4) required List<PleromaApiPollOption> options,
      @HiveField(5) @JsonKey(name: 'own_votes') required List<int>? ownVotes,
      @HiveField(6) required bool? voted,
      @HiveField(7) @JsonKey(name: 'voters_count') required int? votersCount,
      @HiveField(8) @JsonKey(name: 'votes_count') required int? votesCount}) {
    return _PleromaApiPoll(
      expired: expired,
      expiresAt: expiresAt,
      id: id,
      multiple: multiple,
      options: options,
      ownVotes: ownVotes,
      voted: voted,
      votersCount: votersCount,
      votesCount: votesCount,
    );
  }

  PleromaApiPoll fromJson(Map<String, Object> json) {
    return PleromaApiPoll.fromJson(json);
  }
}

/// @nodoc
const $PleromaApiPoll = _$PleromaApiPollTearOff();

/// @nodoc
mixin _$PleromaApiPoll {
  @HiveField(0)
  bool get expired => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(3)
  bool get multiple => throw _privateConstructorUsedError;
  @HiveField(4)
  List<PleromaApiPollOption> get options => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'own_votes')
  List<int>? get ownVotes => throw _privateConstructorUsedError;
  @HiveField(6)
  bool? get voted => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'voters_count')
  int? get votersCount => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'votes_count')
  int? get votesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PleromaApiPollCopyWith<PleromaApiPoll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PleromaApiPollCopyWith<$Res> {
  factory $PleromaApiPollCopyWith(
          PleromaApiPoll value, $Res Function(PleromaApiPoll) then) =
      _$PleromaApiPollCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) bool expired,
      @HiveField(1) @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @HiveField(2) String? id,
      @HiveField(3) bool multiple,
      @HiveField(4) List<PleromaApiPollOption> options,
      @HiveField(5) @JsonKey(name: 'own_votes') List<int>? ownVotes,
      @HiveField(6) bool? voted,
      @HiveField(7) @JsonKey(name: 'voters_count') int? votersCount,
      @HiveField(8) @JsonKey(name: 'votes_count') int? votesCount});
}

/// @nodoc
class _$PleromaApiPollCopyWithImpl<$Res>
    implements $PleromaApiPollCopyWith<$Res> {
  _$PleromaApiPollCopyWithImpl(this._value, this._then);

  final PleromaApiPoll _value;
  // ignore: unused_field
  final $Res Function(PleromaApiPoll) _then;

  @override
  $Res call({
    Object? expired = freezed,
    Object? expiresAt = freezed,
    Object? id = freezed,
    Object? multiple = freezed,
    Object? options = freezed,
    Object? ownVotes = freezed,
    Object? voted = freezed,
    Object? votersCount = freezed,
    Object? votesCount = freezed,
  }) {
    return _then(_value.copyWith(
      expired: expired == freezed
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: multiple == freezed
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PleromaApiPollOption>,
      ownVotes: ownVotes == freezed
          ? _value.ownVotes
          : ownVotes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as bool?,
      votersCount: votersCount == freezed
          ? _value.votersCount
          : votersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      votesCount: votesCount == freezed
          ? _value.votesCount
          : votesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PleromaApiPollCopyWith<$Res>
    implements $PleromaApiPollCopyWith<$Res> {
  factory _$PleromaApiPollCopyWith(
          _PleromaApiPoll value, $Res Function(_PleromaApiPoll) then) =
      __$PleromaApiPollCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) bool expired,
      @HiveField(1) @JsonKey(name: 'expires_at') DateTime? expiresAt,
      @HiveField(2) String? id,
      @HiveField(3) bool multiple,
      @HiveField(4) List<PleromaApiPollOption> options,
      @HiveField(5) @JsonKey(name: 'own_votes') List<int>? ownVotes,
      @HiveField(6) bool? voted,
      @HiveField(7) @JsonKey(name: 'voters_count') int? votersCount,
      @HiveField(8) @JsonKey(name: 'votes_count') int? votesCount});
}

/// @nodoc
class __$PleromaApiPollCopyWithImpl<$Res>
    extends _$PleromaApiPollCopyWithImpl<$Res>
    implements _$PleromaApiPollCopyWith<$Res> {
  __$PleromaApiPollCopyWithImpl(
      _PleromaApiPoll _value, $Res Function(_PleromaApiPoll) _then)
      : super(_value, (v) => _then(v as _PleromaApiPoll));

  @override
  _PleromaApiPoll get _value => super._value as _PleromaApiPoll;

  @override
  $Res call({
    Object? expired = freezed,
    Object? expiresAt = freezed,
    Object? id = freezed,
    Object? multiple = freezed,
    Object? options = freezed,
    Object? ownVotes = freezed,
    Object? voted = freezed,
    Object? votersCount = freezed,
    Object? votesCount = freezed,
  }) {
    return _then(_PleromaApiPoll(
      expired: expired == freezed
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple: multiple == freezed
          ? _value.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<PleromaApiPollOption>,
      ownVotes: ownVotes == freezed
          ? _value.ownVotes
          : ownVotes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as bool?,
      votersCount: votersCount == freezed
          ? _value.votersCount
          : votersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      votesCount: votesCount == freezed
          ? _value.votesCount
          : votesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PleromaApiPoll implements _PleromaApiPoll {
  const _$_PleromaApiPoll(
      {@HiveField(0) required this.expired,
      @HiveField(1) @JsonKey(name: 'expires_at') required this.expiresAt,
      @HiveField(2) required this.id,
      @HiveField(3) required this.multiple,
      @HiveField(4) required this.options,
      @HiveField(5) @JsonKey(name: 'own_votes') required this.ownVotes,
      @HiveField(6) required this.voted,
      @HiveField(7) @JsonKey(name: 'voters_count') required this.votersCount,
      @HiveField(8) @JsonKey(name: 'votes_count') required this.votesCount});

  factory _$_PleromaApiPoll.fromJson(Map<String, dynamic> json) =>
      _$$_PleromaApiPollFromJson(json);

  @override
  @HiveField(0)
  final bool expired;
  @override
  @HiveField(1)
  @JsonKey(name: 'expires_at')
  final DateTime? expiresAt;
  @override
  @HiveField(2)
  final String? id;
  @override
  @HiveField(3)
  final bool multiple;
  @override
  @HiveField(4)
  final List<PleromaApiPollOption> options;
  @override
  @HiveField(5)
  @JsonKey(name: 'own_votes')
  final List<int>? ownVotes;
  @override
  @HiveField(6)
  final bool? voted;
  @override
  @HiveField(7)
  @JsonKey(name: 'voters_count')
  final int? votersCount;
  @override
  @HiveField(8)
  @JsonKey(name: 'votes_count')
  final int? votesCount;

  @override
  String toString() {
    return 'PleromaApiPoll(expired: $expired, expiresAt: $expiresAt, id: $id, multiple: $multiple, options: $options, ownVotes: $ownVotes, voted: $voted, votersCount: $votersCount, votesCount: $votesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PleromaApiPoll &&
            (identical(other.expired, expired) ||
                const DeepCollectionEquality()
                    .equals(other.expired, expired)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.multiple, multiple) ||
                const DeepCollectionEquality()
                    .equals(other.multiple, multiple)) &&
            (identical(other.options, options) ||
                const DeepCollectionEquality()
                    .equals(other.options, options)) &&
            (identical(other.ownVotes, ownVotes) ||
                const DeepCollectionEquality()
                    .equals(other.ownVotes, ownVotes)) &&
            (identical(other.voted, voted) ||
                const DeepCollectionEquality().equals(other.voted, voted)) &&
            (identical(other.votersCount, votersCount) ||
                const DeepCollectionEquality()
                    .equals(other.votersCount, votersCount)) &&
            (identical(other.votesCount, votesCount) ||
                const DeepCollectionEquality()
                    .equals(other.votesCount, votesCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(expired) ^
      const DeepCollectionEquality().hash(expiresAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(multiple) ^
      const DeepCollectionEquality().hash(options) ^
      const DeepCollectionEquality().hash(ownVotes) ^
      const DeepCollectionEquality().hash(voted) ^
      const DeepCollectionEquality().hash(votersCount) ^
      const DeepCollectionEquality().hash(votesCount);

  @JsonKey(ignore: true)
  @override
  _$PleromaApiPollCopyWith<_PleromaApiPoll> get copyWith =>
      __$PleromaApiPollCopyWithImpl<_PleromaApiPoll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PleromaApiPollToJson(this);
  }
}

abstract class _PleromaApiPoll implements PleromaApiPoll {
  const factory _PleromaApiPoll(
      {@HiveField(0)
          required bool expired,
      @HiveField(1)
      @JsonKey(name: 'expires_at')
          required DateTime? expiresAt,
      @HiveField(2)
          required String? id,
      @HiveField(3)
          required bool multiple,
      @HiveField(4)
          required List<PleromaApiPollOption> options,
      @HiveField(5)
      @JsonKey(name: 'own_votes')
          required List<int>? ownVotes,
      @HiveField(6)
          required bool? voted,
      @HiveField(7)
      @JsonKey(name: 'voters_count')
          required int? votersCount,
      @HiveField(8)
      @JsonKey(name: 'votes_count')
          required int? votesCount}) = _$_PleromaApiPoll;

  factory _PleromaApiPoll.fromJson(Map<String, dynamic> json) =
      _$_PleromaApiPoll.fromJson;

  @override
  @HiveField(0)
  bool get expired => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String? get id => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  bool get multiple => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  List<PleromaApiPollOption> get options => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  @JsonKey(name: 'own_votes')
  List<int>? get ownVotes => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  bool? get voted => throw _privateConstructorUsedError;
  @override
  @HiveField(7)
  @JsonKey(name: 'voters_count')
  int? get votersCount => throw _privateConstructorUsedError;
  @override
  @HiveField(8)
  @JsonKey(name: 'votes_count')
  int? get votesCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PleromaApiPollCopyWith<_PleromaApiPoll> get copyWith =>
      throw _privateConstructorUsedError;
}
