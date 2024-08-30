// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? status, String? message) request,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) database,
    required TResult Function(String? message) other,
    required TResult Function(String? message) authorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? status, String? message)? request,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? database,
    TResult? Function(String? message)? other,
    TResult? Function(String? message)? authorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? status, String? message)? request,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? database,
    TResult Function(String? message)? other,
    TResult Function(String? message)? authorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) request,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(OtherFailure value) other,
    required TResult Function(Authorization value) authorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(OtherFailure value)? other,
    TResult? Function(Authorization value)? authorization,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? request,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(OtherFailure value)? other,
    TResult Function(Authorization value)? authorization,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RequestFailureImplCopyWith(_$RequestFailureImpl value,
          $Res Function(_$RequestFailureImpl) then) =
      __$$RequestFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$RequestFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RequestFailureImpl>
    implements _$$RequestFailureImplCopyWith<$Res> {
  __$$RequestFailureImplCopyWithImpl(
      _$RequestFailureImpl _value, $Res Function(_$RequestFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$RequestFailureImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestFailureImpl implements RequestFailure {
  _$RequestFailureImpl({this.status, this.message});

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.request(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFailureImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestFailureImplCopyWith<_$RequestFailureImpl> get copyWith =>
      __$$RequestFailureImplCopyWithImpl<_$RequestFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? status, String? message) request,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) database,
    required TResult Function(String? message) other,
    required TResult Function(String? message) authorization,
  }) {
    return request(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? status, String? message)? request,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? database,
    TResult? Function(String? message)? other,
    TResult? Function(String? message)? authorization,
  }) {
    return request?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? status, String? message)? request,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? database,
    TResult Function(String? message)? other,
    TResult Function(String? message)? authorization,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) request,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(OtherFailure value) other,
    required TResult Function(Authorization value) authorization,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(OtherFailure value)? other,
    TResult? Function(Authorization value)? authorization,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? request,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(OtherFailure value)? other,
    TResult Function(Authorization value)? authorization,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class RequestFailure implements Failure {
  factory RequestFailure({final int? status, final String? message}) =
      _$RequestFailureImpl;

  int? get status;
  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestFailureImplCopyWith<_$RequestFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl value,
          $Res Function(_$ConnectionFailureImpl) then) =
      __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl _value,
      $Res Function(_$ConnectionFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConnectionFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionFailureImpl implements ConnectionFailure {
  _$ConnectionFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.connection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? status, String? message) request,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) database,
    required TResult Function(String? message) other,
    required TResult Function(String? message) authorization,
  }) {
    return connection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? status, String? message)? request,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? database,
    TResult? Function(String? message)? other,
    TResult? Function(String? message)? authorization,
  }) {
    return connection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? status, String? message)? request,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? database,
    TResult Function(String? message)? other,
    TResult Function(String? message)? authorization,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) request,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(OtherFailure value) other,
    required TResult Function(Authorization value) authorization,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(OtherFailure value)? other,
    TResult? Function(Authorization value)? authorization,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? request,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(OtherFailure value)? other,
    TResult Function(Authorization value)? authorization,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements Failure {
  factory ConnectionFailure({final String? message}) = _$ConnectionFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatabaseFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$DatabaseFailureImplCopyWith(_$DatabaseFailureImpl value,
          $Res Function(_$DatabaseFailureImpl) then) =
      __$$DatabaseFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$DatabaseFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DatabaseFailureImpl>
    implements _$$DatabaseFailureImplCopyWith<$Res> {
  __$$DatabaseFailureImplCopyWithImpl(
      _$DatabaseFailureImpl _value, $Res Function(_$DatabaseFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DatabaseFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DatabaseFailureImpl implements DatabaseFailure {
  _$DatabaseFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.database(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatabaseFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      __$$DatabaseFailureImplCopyWithImpl<_$DatabaseFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? status, String? message) request,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) database,
    required TResult Function(String? message) other,
    required TResult Function(String? message) authorization,
  }) {
    return database(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? status, String? message)? request,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? database,
    TResult? Function(String? message)? other,
    TResult? Function(String? message)? authorization,
  }) {
    return database?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? status, String? message)? request,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? database,
    TResult Function(String? message)? other,
    TResult Function(String? message)? authorization,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) request,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(OtherFailure value) other,
    required TResult Function(Authorization value) authorization,
  }) {
    return database(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(OtherFailure value)? other,
    TResult? Function(Authorization value)? authorization,
  }) {
    return database?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? request,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(OtherFailure value)? other,
    TResult Function(Authorization value)? authorization,
    required TResult orElse(),
  }) {
    if (database != null) {
      return database(this);
    }
    return orElse();
  }
}

abstract class DatabaseFailure implements Failure {
  factory DatabaseFailure({final String? message}) = _$DatabaseFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatabaseFailureImplCopyWith<_$DatabaseFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$OtherFailureImplCopyWith(
          _$OtherFailureImpl value, $Res Function(_$OtherFailureImpl) then) =
      __$$OtherFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$OtherFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$OtherFailureImpl>
    implements _$$OtherFailureImplCopyWith<$Res> {
  __$$OtherFailureImplCopyWithImpl(
      _$OtherFailureImpl _value, $Res Function(_$OtherFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$OtherFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OtherFailureImpl implements OtherFailure {
  _$OtherFailureImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.other(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      __$$OtherFailureImplCopyWithImpl<_$OtherFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? status, String? message) request,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) database,
    required TResult Function(String? message) other,
    required TResult Function(String? message) authorization,
  }) {
    return other(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? status, String? message)? request,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? database,
    TResult? Function(String? message)? other,
    TResult? Function(String? message)? authorization,
  }) {
    return other?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? status, String? message)? request,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? database,
    TResult Function(String? message)? other,
    TResult Function(String? message)? authorization,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) request,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(OtherFailure value) other,
    required TResult Function(Authorization value) authorization,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(OtherFailure value)? other,
    TResult? Function(Authorization value)? authorization,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? request,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(OtherFailure value)? other,
    TResult Function(Authorization value)? authorization,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class OtherFailure implements Failure {
  factory OtherFailure({final String? message}) = _$OtherFailureImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtherFailureImplCopyWith<_$OtherFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizationImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$AuthorizationImplCopyWith(
          _$AuthorizationImpl value, $Res Function(_$AuthorizationImpl) then) =
      __$$AuthorizationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthorizationImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$AuthorizationImpl>
    implements _$$AuthorizationImplCopyWith<$Res> {
  __$$AuthorizationImplCopyWithImpl(
      _$AuthorizationImpl _value, $Res Function(_$AuthorizationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthorizationImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthorizationImpl implements Authorization {
  _$AuthorizationImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.authorization(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizationImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizationImplCopyWith<_$AuthorizationImpl> get copyWith =>
      __$$AuthorizationImplCopyWithImpl<_$AuthorizationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? status, String? message) request,
    required TResult Function(String? message) connection,
    required TResult Function(String? message) database,
    required TResult Function(String? message) other,
    required TResult Function(String? message) authorization,
  }) {
    return authorization(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? status, String? message)? request,
    TResult? Function(String? message)? connection,
    TResult? Function(String? message)? database,
    TResult? Function(String? message)? other,
    TResult? Function(String? message)? authorization,
  }) {
    return authorization?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? status, String? message)? request,
    TResult Function(String? message)? connection,
    TResult Function(String? message)? database,
    TResult Function(String? message)? other,
    TResult Function(String? message)? authorization,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) request,
    required TResult Function(ConnectionFailure value) connection,
    required TResult Function(DatabaseFailure value) database,
    required TResult Function(OtherFailure value) other,
    required TResult Function(Authorization value) authorization,
  }) {
    return authorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestFailure value)? request,
    TResult? Function(ConnectionFailure value)? connection,
    TResult? Function(DatabaseFailure value)? database,
    TResult? Function(OtherFailure value)? other,
    TResult? Function(Authorization value)? authorization,
  }) {
    return authorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? request,
    TResult Function(ConnectionFailure value)? connection,
    TResult Function(DatabaseFailure value)? database,
    TResult Function(OtherFailure value)? other,
    TResult Function(Authorization value)? authorization,
    required TResult orElse(),
  }) {
    if (authorization != null) {
      return authorization(this);
    }
    return orElse();
  }
}

abstract class Authorization implements Failure {
  factory Authorization({final String? message}) = _$AuthorizationImpl;

  @override
  String? get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorizationImplCopyWith<_$AuthorizationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
