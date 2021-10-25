// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mastodon_api_web_sockets_channel_type_sealed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MastodonApiWebSocketsChannelTypeTearOff {
  const _$MastodonApiWebSocketsChannelTypeTearOff();

  _Public public(
      {String stringValue =
          MastodonApiWebSocketsChannelType.publicStringValue}) {
    return _Public(
      stringValue: stringValue,
    );
  }

  _Direct direct(
      {String stringValue =
          MastodonApiWebSocketsChannelType.directStringValue}) {
    return _Direct(
      stringValue: stringValue,
    );
  }

  _User user(
      {String stringValue = MastodonApiWebSocketsChannelType.userStringValue}) {
    return _User(
      stringValue: stringValue,
    );
  }

  _List list(
      {String stringValue = MastodonApiWebSocketsChannelType.listStringValue}) {
    return _List(
      stringValue: stringValue,
    );
  }

  _Hashtag hashtag(
      {String stringValue =
          MastodonApiWebSocketsChannelType.hashtagStringValue}) {
    return _Hashtag(
      stringValue: stringValue,
    );
  }
}

/// @nodoc
const $MastodonApiWebSocketsChannelType =
    _$MastodonApiWebSocketsChannelTypeTearOff();

/// @nodoc
mixin _$MastodonApiWebSocketsChannelType {
  String get stringValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) public,
    required TResult Function(String stringValue) direct,
    required TResult Function(String stringValue) user,
    required TResult Function(String stringValue) list,
    required TResult Function(String stringValue) hashtag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Public value) public,
    required TResult Function(_Direct value) direct,
    required TResult Function(_User value) user,
    required TResult Function(_List value) list,
    required TResult Function(_Hashtag value) hashtag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MastodonApiWebSocketsChannelTypeCopyWith<MastodonApiWebSocketsChannelType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  factory $MastodonApiWebSocketsChannelTypeCopyWith(
          MastodonApiWebSocketsChannelType value,
          $Res Function(MastodonApiWebSocketsChannelType) then) =
      _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>;
  $Res call({String stringValue});
}

/// @nodoc
class _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>
    implements $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  _$MastodonApiWebSocketsChannelTypeCopyWithImpl(this._value, this._then);

  final MastodonApiWebSocketsChannelType _value;
  // ignore: unused_field
  final $Res Function(MastodonApiWebSocketsChannelType) _then;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_value.copyWith(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PublicCopyWith<$Res>
    implements $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  factory _$PublicCopyWith(_Public value, $Res Function(_Public) then) =
      __$PublicCopyWithImpl<$Res>;
  @override
  $Res call({String stringValue});
}

/// @nodoc
class __$PublicCopyWithImpl<$Res>
    extends _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>
    implements _$PublicCopyWith<$Res> {
  __$PublicCopyWithImpl(_Public _value, $Res Function(_Public) _then)
      : super(_value, (v) => _then(v as _Public));

  @override
  _Public get _value => super._value as _Public;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_Public(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Public implements _Public {
  const _$_Public(
      {this.stringValue = MastodonApiWebSocketsChannelType.publicStringValue});

  @JsonKey(defaultValue: MastodonApiWebSocketsChannelType.publicStringValue)
  @override
  final String stringValue;

  @override
  String toString() {
    return 'MastodonApiWebSocketsChannelType.public(stringValue: $stringValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Public &&
            (identical(other.stringValue, stringValue) ||
                const DeepCollectionEquality()
                    .equals(other.stringValue, stringValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stringValue);

  @JsonKey(ignore: true)
  @override
  _$PublicCopyWith<_Public> get copyWith =>
      __$PublicCopyWithImpl<_Public>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) public,
    required TResult Function(String stringValue) direct,
    required TResult Function(String stringValue) user,
    required TResult Function(String stringValue) list,
    required TResult Function(String stringValue) hashtag,
  }) {
    return public(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
  }) {
    return public?.call(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
    required TResult orElse(),
  }) {
    if (public != null) {
      return public(stringValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Public value) public,
    required TResult Function(_Direct value) direct,
    required TResult Function(_User value) user,
    required TResult Function(_List value) list,
    required TResult Function(_Hashtag value) hashtag,
  }) {
    return public(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
  }) {
    return public?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
    required TResult orElse(),
  }) {
    if (public != null) {
      return public(this);
    }
    return orElse();
  }
}

abstract class _Public implements MastodonApiWebSocketsChannelType {
  const factory _Public({String stringValue}) = _$_Public;

  @override
  String get stringValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PublicCopyWith<_Public> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DirectCopyWith<$Res>
    implements $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  factory _$DirectCopyWith(_Direct value, $Res Function(_Direct) then) =
      __$DirectCopyWithImpl<$Res>;
  @override
  $Res call({String stringValue});
}

/// @nodoc
class __$DirectCopyWithImpl<$Res>
    extends _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>
    implements _$DirectCopyWith<$Res> {
  __$DirectCopyWithImpl(_Direct _value, $Res Function(_Direct) _then)
      : super(_value, (v) => _then(v as _Direct));

  @override
  _Direct get _value => super._value as _Direct;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_Direct(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Direct implements _Direct {
  const _$_Direct(
      {this.stringValue = MastodonApiWebSocketsChannelType.directStringValue});

  @JsonKey(defaultValue: MastodonApiWebSocketsChannelType.directStringValue)
  @override
  final String stringValue;

  @override
  String toString() {
    return 'MastodonApiWebSocketsChannelType.direct(stringValue: $stringValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Direct &&
            (identical(other.stringValue, stringValue) ||
                const DeepCollectionEquality()
                    .equals(other.stringValue, stringValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stringValue);

  @JsonKey(ignore: true)
  @override
  _$DirectCopyWith<_Direct> get copyWith =>
      __$DirectCopyWithImpl<_Direct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) public,
    required TResult Function(String stringValue) direct,
    required TResult Function(String stringValue) user,
    required TResult Function(String stringValue) list,
    required TResult Function(String stringValue) hashtag,
  }) {
    return direct(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
  }) {
    return direct?.call(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
    required TResult orElse(),
  }) {
    if (direct != null) {
      return direct(stringValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Public value) public,
    required TResult Function(_Direct value) direct,
    required TResult Function(_User value) user,
    required TResult Function(_List value) list,
    required TResult Function(_Hashtag value) hashtag,
  }) {
    return direct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
  }) {
    return direct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
    required TResult orElse(),
  }) {
    if (direct != null) {
      return direct(this);
    }
    return orElse();
  }
}

abstract class _Direct implements MastodonApiWebSocketsChannelType {
  const factory _Direct({String stringValue}) = _$_Direct;

  @override
  String get stringValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DirectCopyWith<_Direct> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserCopyWith<$Res>
    implements $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({String stringValue});
}

/// @nodoc
class __$UserCopyWithImpl<$Res>
    extends _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_User(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {this.stringValue = MastodonApiWebSocketsChannelType.userStringValue});

  @JsonKey(defaultValue: MastodonApiWebSocketsChannelType.userStringValue)
  @override
  final String stringValue;

  @override
  String toString() {
    return 'MastodonApiWebSocketsChannelType.user(stringValue: $stringValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.stringValue, stringValue) ||
                const DeepCollectionEquality()
                    .equals(other.stringValue, stringValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stringValue);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) public,
    required TResult Function(String stringValue) direct,
    required TResult Function(String stringValue) user,
    required TResult Function(String stringValue) list,
    required TResult Function(String stringValue) hashtag,
  }) {
    return user(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
  }) {
    return user?.call(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(stringValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Public value) public,
    required TResult Function(_Direct value) direct,
    required TResult Function(_User value) user,
    required TResult Function(_List value) list,
    required TResult Function(_Hashtag value) hashtag,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements MastodonApiWebSocketsChannelType {
  const factory _User({String stringValue}) = _$_User;

  @override
  String get stringValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListCopyWith<$Res>
    implements $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  factory _$ListCopyWith(_List value, $Res Function(_List) then) =
      __$ListCopyWithImpl<$Res>;
  @override
  $Res call({String stringValue});
}

/// @nodoc
class __$ListCopyWithImpl<$Res>
    extends _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>
    implements _$ListCopyWith<$Res> {
  __$ListCopyWithImpl(_List _value, $Res Function(_List) _then)
      : super(_value, (v) => _then(v as _List));

  @override
  _List get _value => super._value as _List;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_List(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_List implements _List {
  const _$_List(
      {this.stringValue = MastodonApiWebSocketsChannelType.listStringValue});

  @JsonKey(defaultValue: MastodonApiWebSocketsChannelType.listStringValue)
  @override
  final String stringValue;

  @override
  String toString() {
    return 'MastodonApiWebSocketsChannelType.list(stringValue: $stringValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _List &&
            (identical(other.stringValue, stringValue) ||
                const DeepCollectionEquality()
                    .equals(other.stringValue, stringValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stringValue);

  @JsonKey(ignore: true)
  @override
  _$ListCopyWith<_List> get copyWith =>
      __$ListCopyWithImpl<_List>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) public,
    required TResult Function(String stringValue) direct,
    required TResult Function(String stringValue) user,
    required TResult Function(String stringValue) list,
    required TResult Function(String stringValue) hashtag,
  }) {
    return list(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
  }) {
    return list?.call(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(stringValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Public value) public,
    required TResult Function(_Direct value) direct,
    required TResult Function(_User value) user,
    required TResult Function(_List value) list,
    required TResult Function(_Hashtag value) hashtag,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _List implements MastodonApiWebSocketsChannelType {
  const factory _List({String stringValue}) = _$_List;

  @override
  String get stringValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListCopyWith<_List> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HashtagCopyWith<$Res>
    implements $MastodonApiWebSocketsChannelTypeCopyWith<$Res> {
  factory _$HashtagCopyWith(_Hashtag value, $Res Function(_Hashtag) then) =
      __$HashtagCopyWithImpl<$Res>;
  @override
  $Res call({String stringValue});
}

/// @nodoc
class __$HashtagCopyWithImpl<$Res>
    extends _$MastodonApiWebSocketsChannelTypeCopyWithImpl<$Res>
    implements _$HashtagCopyWith<$Res> {
  __$HashtagCopyWithImpl(_Hashtag _value, $Res Function(_Hashtag) _then)
      : super(_value, (v) => _then(v as _Hashtag));

  @override
  _Hashtag get _value => super._value as _Hashtag;

  @override
  $Res call({
    Object? stringValue = freezed,
  }) {
    return _then(_Hashtag(
      stringValue: stringValue == freezed
          ? _value.stringValue
          : stringValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Hashtag implements _Hashtag {
  const _$_Hashtag(
      {this.stringValue = MastodonApiWebSocketsChannelType.hashtagStringValue});

  @JsonKey(defaultValue: MastodonApiWebSocketsChannelType.hashtagStringValue)
  @override
  final String stringValue;

  @override
  String toString() {
    return 'MastodonApiWebSocketsChannelType.hashtag(stringValue: $stringValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Hashtag &&
            (identical(other.stringValue, stringValue) ||
                const DeepCollectionEquality()
                    .equals(other.stringValue, stringValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(stringValue);

  @JsonKey(ignore: true)
  @override
  _$HashtagCopyWith<_Hashtag> get copyWith =>
      __$HashtagCopyWithImpl<_Hashtag>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String stringValue) public,
    required TResult Function(String stringValue) direct,
    required TResult Function(String stringValue) user,
    required TResult Function(String stringValue) list,
    required TResult Function(String stringValue) hashtag,
  }) {
    return hashtag(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
  }) {
    return hashtag?.call(stringValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String stringValue)? public,
    TResult Function(String stringValue)? direct,
    TResult Function(String stringValue)? user,
    TResult Function(String stringValue)? list,
    TResult Function(String stringValue)? hashtag,
    required TResult orElse(),
  }) {
    if (hashtag != null) {
      return hashtag(stringValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Public value) public,
    required TResult Function(_Direct value) direct,
    required TResult Function(_User value) user,
    required TResult Function(_List value) list,
    required TResult Function(_Hashtag value) hashtag,
  }) {
    return hashtag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
  }) {
    return hashtag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Public value)? public,
    TResult Function(_Direct value)? direct,
    TResult Function(_User value)? user,
    TResult Function(_List value)? list,
    TResult Function(_Hashtag value)? hashtag,
    required TResult orElse(),
  }) {
    if (hashtag != null) {
      return hashtag(this);
    }
    return orElse();
  }
}

abstract class _Hashtag implements MastodonApiWebSocketsChannelType {
  const factory _Hashtag({String stringValue}) = _$_Hashtag;

  @override
  String get stringValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HashtagCopyWith<_Hashtag> get copyWith =>
      throw _privateConstructorUsedError;
}
