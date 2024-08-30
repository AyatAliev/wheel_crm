// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthData _$AuthDataFromJson(Map<String, dynamic> json) {
  return _AuthData.fromJson(json);
}

/// @nodoc
mixin _$AuthData {
  @JsonKey(name: 'access')
  String? get tokenAccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh')
  String? get tokenRefresh => throw _privateConstructorUsedError;
  AuthInfo? get authInfo => throw _privateConstructorUsedError;

  /// Serializes this AuthData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthDataCopyWith<AuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res, AuthData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access') String? tokenAccess,
      @JsonKey(name: 'refresh') String? tokenRefresh,
      AuthInfo? authInfo});

  $AuthInfoCopyWith<$Res>? get authInfo;
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res, $Val extends AuthData>
    implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAccess = freezed,
    Object? tokenRefresh = freezed,
    Object? authInfo = freezed,
  }) {
    return _then(_value.copyWith(
      tokenAccess: freezed == tokenAccess
          ? _value.tokenAccess
          : tokenAccess // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenRefresh: freezed == tokenRefresh
          ? _value.tokenRefresh
          : tokenRefresh // ignore: cast_nullable_to_non_nullable
              as String?,
      authInfo: freezed == authInfo
          ? _value.authInfo
          : authInfo // ignore: cast_nullable_to_non_nullable
              as AuthInfo?,
    ) as $Val);
  }

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthInfoCopyWith<$Res>? get authInfo {
    if (_value.authInfo == null) {
      return null;
    }

    return $AuthInfoCopyWith<$Res>(_value.authInfo!, (value) {
      return _then(_value.copyWith(authInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthDataImplCopyWith<$Res>
    implements $AuthDataCopyWith<$Res> {
  factory _$$AuthDataImplCopyWith(
          _$AuthDataImpl value, $Res Function(_$AuthDataImpl) then) =
      __$$AuthDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access') String? tokenAccess,
      @JsonKey(name: 'refresh') String? tokenRefresh,
      AuthInfo? authInfo});

  @override
  $AuthInfoCopyWith<$Res>? get authInfo;
}

/// @nodoc
class __$$AuthDataImplCopyWithImpl<$Res>
    extends _$AuthDataCopyWithImpl<$Res, _$AuthDataImpl>
    implements _$$AuthDataImplCopyWith<$Res> {
  __$$AuthDataImplCopyWithImpl(
      _$AuthDataImpl _value, $Res Function(_$AuthDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAccess = freezed,
    Object? tokenRefresh = freezed,
    Object? authInfo = freezed,
  }) {
    return _then(_$AuthDataImpl(
      tokenAccess: freezed == tokenAccess
          ? _value.tokenAccess
          : tokenAccess // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenRefresh: freezed == tokenRefresh
          ? _value.tokenRefresh
          : tokenRefresh // ignore: cast_nullable_to_non_nullable
              as String?,
      authInfo: freezed == authInfo
          ? _value.authInfo
          : authInfo // ignore: cast_nullable_to_non_nullable
              as AuthInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthDataImpl implements _AuthData {
  _$AuthDataImpl(
      {@JsonKey(name: 'access') required this.tokenAccess,
      @JsonKey(name: 'refresh') required this.tokenRefresh,
      required this.authInfo});

  factory _$AuthDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthDataImplFromJson(json);

  @override
  @JsonKey(name: 'access')
  final String? tokenAccess;
  @override
  @JsonKey(name: 'refresh')
  final String? tokenRefresh;
  @override
  final AuthInfo? authInfo;

  @override
  String toString() {
    return 'AuthData(tokenAccess: $tokenAccess, tokenRefresh: $tokenRefresh, authInfo: $authInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataImpl &&
            (identical(other.tokenAccess, tokenAccess) ||
                other.tokenAccess == tokenAccess) &&
            (identical(other.tokenRefresh, tokenRefresh) ||
                other.tokenRefresh == tokenRefresh) &&
            (identical(other.authInfo, authInfo) ||
                other.authInfo == authInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokenAccess, tokenRefresh, authInfo);

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataImplCopyWith<_$AuthDataImpl> get copyWith =>
      __$$AuthDataImplCopyWithImpl<_$AuthDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthDataImplToJson(
      this,
    );
  }
}

abstract class _AuthData implements AuthData {
  factory _AuthData(
      {@JsonKey(name: 'access') required final String? tokenAccess,
      @JsonKey(name: 'refresh') required final String? tokenRefresh,
      required final AuthInfo? authInfo}) = _$AuthDataImpl;

  factory _AuthData.fromJson(Map<String, dynamic> json) =
      _$AuthDataImpl.fromJson;

  @override
  @JsonKey(name: 'access')
  String? get tokenAccess;
  @override
  @JsonKey(name: 'refresh')
  String? get tokenRefresh;
  @override
  AuthInfo? get authInfo;

  /// Create a copy of AuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthDataImplCopyWith<_$AuthDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return _AuthInfo.fromJson(json);
}

/// @nodoc
mixin _$AuthInfo {
  int? get phone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get statusId => throw _privateConstructorUsedError;

  /// Serializes this AuthInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthInfoCopyWith<AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoCopyWith<$Res> {
  factory $AuthInfoCopyWith(AuthInfo value, $Res Function(AuthInfo) then) =
      _$AuthInfoCopyWithImpl<$Res, AuthInfo>;
  @useResult
  $Res call({int? phone, String? name, int? statusId});
}

/// @nodoc
class _$AuthInfoCopyWithImpl<$Res, $Val extends AuthInfo>
    implements $AuthInfoCopyWith<$Res> {
  _$AuthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? statusId = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthInfoImplCopyWith<$Res>
    implements $AuthInfoCopyWith<$Res> {
  factory _$$AuthInfoImplCopyWith(
          _$AuthInfoImpl value, $Res Function(_$AuthInfoImpl) then) =
      __$$AuthInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? phone, String? name, int? statusId});
}

/// @nodoc
class __$$AuthInfoImplCopyWithImpl<$Res>
    extends _$AuthInfoCopyWithImpl<$Res, _$AuthInfoImpl>
    implements _$$AuthInfoImplCopyWith<$Res> {
  __$$AuthInfoImplCopyWithImpl(
      _$AuthInfoImpl _value, $Res Function(_$AuthInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? statusId = freezed,
  }) {
    return _then(_$AuthInfoImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      statusId: freezed == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthInfoImpl implements _AuthInfo {
  _$AuthInfoImpl(
      {required this.phone, required this.name, required this.statusId});

  factory _$AuthInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoImplFromJson(json);

  @override
  final int? phone;
  @override
  final String? name;
  @override
  final int? statusId;

  @override
  String toString() {
    return 'AuthInfo(phone: $phone, name: $name, statusId: $statusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInfoImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, name, statusId);

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInfoImplCopyWith<_$AuthInfoImpl> get copyWith =>
      __$$AuthInfoImplCopyWithImpl<_$AuthInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthInfoImplToJson(
      this,
    );
  }
}

abstract class _AuthInfo implements AuthInfo {
  factory _AuthInfo(
      {required final int? phone,
      required final String? name,
      required final int? statusId}) = _$AuthInfoImpl;

  factory _AuthInfo.fromJson(Map<String, dynamic> json) =
      _$AuthInfoImpl.fromJson;

  @override
  int? get phone;
  @override
  String? get name;
  @override
  int? get statusId;

  /// Create a copy of AuthInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthInfoImplCopyWith<_$AuthInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
