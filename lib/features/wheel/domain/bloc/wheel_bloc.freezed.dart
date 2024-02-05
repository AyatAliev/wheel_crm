// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wheel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WheelEvent {
  int get wheelId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int wheelId) getWheelsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int wheelId)? getWheelsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int wheelId)? getWheelsById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheelsById value) getWheelsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheelsById value)? getWheelsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheelsById value)? getWheelsById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WheelEventCopyWith<WheelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheelEventCopyWith<$Res> {
  factory $WheelEventCopyWith(
          WheelEvent value, $Res Function(WheelEvent) then) =
      _$WheelEventCopyWithImpl<$Res, WheelEvent>;
  @useResult
  $Res call({int wheelId});
}

/// @nodoc
class _$WheelEventCopyWithImpl<$Res, $Val extends WheelEvent>
    implements $WheelEventCopyWith<$Res> {
  _$WheelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wheelId = null,
  }) {
    return _then(_value.copyWith(
      wheelId: null == wheelId
          ? _value.wheelId
          : wheelId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetWheelsByIdImplCopyWith<$Res>
    implements $WheelEventCopyWith<$Res> {
  factory _$$GetWheelsByIdImplCopyWith(
          _$GetWheelsByIdImpl value, $Res Function(_$GetWheelsByIdImpl) then) =
      __$$GetWheelsByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int wheelId});
}

/// @nodoc
class __$$GetWheelsByIdImplCopyWithImpl<$Res>
    extends _$WheelEventCopyWithImpl<$Res, _$GetWheelsByIdImpl>
    implements _$$GetWheelsByIdImplCopyWith<$Res> {
  __$$GetWheelsByIdImplCopyWithImpl(
      _$GetWheelsByIdImpl _value, $Res Function(_$GetWheelsByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wheelId = null,
  }) {
    return _then(_$GetWheelsByIdImpl(
      wheelId: null == wheelId
          ? _value.wheelId
          : wheelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetWheelsByIdImpl implements _GetWheelsById {
  const _$GetWheelsByIdImpl({required this.wheelId});

  @override
  final int wheelId;

  @override
  String toString() {
    return 'WheelEvent.getWheelsById(wheelId: $wheelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWheelsByIdImpl &&
            (identical(other.wheelId, wheelId) || other.wheelId == wheelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wheelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWheelsByIdImplCopyWith<_$GetWheelsByIdImpl> get copyWith =>
      __$$GetWheelsByIdImplCopyWithImpl<_$GetWheelsByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int wheelId) getWheelsById,
  }) {
    return getWheelsById(wheelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int wheelId)? getWheelsById,
  }) {
    return getWheelsById?.call(wheelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int wheelId)? getWheelsById,
    required TResult orElse(),
  }) {
    if (getWheelsById != null) {
      return getWheelsById(wheelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheelsById value) getWheelsById,
  }) {
    return getWheelsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheelsById value)? getWheelsById,
  }) {
    return getWheelsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheelsById value)? getWheelsById,
    required TResult orElse(),
  }) {
    if (getWheelsById != null) {
      return getWheelsById(this);
    }
    return orElse();
  }
}

abstract class _GetWheelsById implements WheelEvent {
  const factory _GetWheelsById({required final int wheelId}) =
      _$GetWheelsByIdImpl;

  @override
  int get wheelId;
  @override
  @JsonKey(ignore: true)
  _$$GetWheelsByIdImplCopyWith<_$GetWheelsByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WheelState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<WheelEntity> get wheels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WheelStateCopyWith<WheelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheelStateCopyWith<$Res> {
  factory $WheelStateCopyWith(
          WheelState value, $Res Function(WheelState) then) =
      _$WheelStateCopyWithImpl<$Res, WheelState>;
  @useResult
  $Res call({StateStatus stateStatus, List<WheelEntity> wheels});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$WheelStateCopyWithImpl<$Res, $Val extends WheelState>
    implements $WheelStateCopyWith<$Res> {
  _$WheelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? wheels = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      wheels: null == wheels
          ? _value.wheels
          : wheels // ignore: cast_nullable_to_non_nullable
              as List<WheelEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WheelStateImplCopyWith<$Res>
    implements $WheelStateCopyWith<$Res> {
  factory _$$WheelStateImplCopyWith(
          _$WheelStateImpl value, $Res Function(_$WheelStateImpl) then) =
      __$$WheelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, List<WheelEntity> wheels});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$WheelStateImplCopyWithImpl<$Res>
    extends _$WheelStateCopyWithImpl<$Res, _$WheelStateImpl>
    implements _$$WheelStateImplCopyWith<$Res> {
  __$$WheelStateImplCopyWithImpl(
      _$WheelStateImpl _value, $Res Function(_$WheelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? wheels = null,
  }) {
    return _then(_$WheelStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      wheels: null == wheels
          ? _value._wheels
          : wheels // ignore: cast_nullable_to_non_nullable
              as List<WheelEntity>,
    ));
  }
}

/// @nodoc

class _$WheelStateImpl implements _WheelState {
  const _$WheelStateImpl(
      {required this.stateStatus, required final List<WheelEntity> wheels})
      : _wheels = wheels;

  @override
  final StateStatus stateStatus;
  final List<WheelEntity> _wheels;
  @override
  List<WheelEntity> get wheels {
    if (_wheels is EqualUnmodifiableListView) return _wheels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wheels);
  }

  @override
  String toString() {
    return 'WheelState(stateStatus: $stateStatus, wheels: $wheels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WheelStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality().equals(other._wheels, _wheels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stateStatus, const DeepCollectionEquality().hash(_wheels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WheelStateImplCopyWith<_$WheelStateImpl> get copyWith =>
      __$$WheelStateImplCopyWithImpl<_$WheelStateImpl>(this, _$identity);
}

abstract class _WheelState implements WheelState {
  const factory _WheelState(
      {required final StateStatus stateStatus,
      required final List<WheelEntity> wheels}) = _$WheelStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<WheelEntity> get wheels;
  @override
  @JsonKey(ignore: true)
  _$$WheelStateImplCopyWith<_$WheelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
