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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int wheelId) getWheelsById,
    required TResult Function(SalesDetailEntity salesDetailEntity) addWheel,
    required TResult Function() getSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int wheelId)? getWheelsById,
    TResult? Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult? Function()? getSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int wheelId)? getWheelsById,
    TResult Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult Function()? getSales,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheelsById value) getWheelsById,
    required TResult Function(_AddWheel value) addWheel,
    required TResult Function(_GetSales value) getSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheelsById value)? getWheelsById,
    TResult? Function(_AddWheel value)? addWheel,
    TResult? Function(_GetSales value)? getSales,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheelsById value)? getWheelsById,
    TResult Function(_AddWheel value)? addWheel,
    TResult Function(_GetSales value)? getSales,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WheelEventCopyWith<$Res> {
  factory $WheelEventCopyWith(
          WheelEvent value, $Res Function(WheelEvent) then) =
      _$WheelEventCopyWithImpl<$Res, WheelEvent>;
}

/// @nodoc
class _$WheelEventCopyWithImpl<$Res, $Val extends WheelEvent>
    implements $WheelEventCopyWith<$Res> {
  _$WheelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWheelsByIdImplCopyWith<$Res> {
  factory _$$GetWheelsByIdImplCopyWith(
          _$GetWheelsByIdImpl value, $Res Function(_$GetWheelsByIdImpl) then) =
      __$$GetWheelsByIdImplCopyWithImpl<$Res>;
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
    required TResult Function(SalesDetailEntity salesDetailEntity) addWheel,
    required TResult Function() getSales,
  }) {
    return getWheelsById(wheelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int wheelId)? getWheelsById,
    TResult? Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult? Function()? getSales,
  }) {
    return getWheelsById?.call(wheelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int wheelId)? getWheelsById,
    TResult Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult Function()? getSales,
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
    required TResult Function(_AddWheel value) addWheel,
    required TResult Function(_GetSales value) getSales,
  }) {
    return getWheelsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheelsById value)? getWheelsById,
    TResult? Function(_AddWheel value)? addWheel,
    TResult? Function(_GetSales value)? getSales,
  }) {
    return getWheelsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheelsById value)? getWheelsById,
    TResult Function(_AddWheel value)? addWheel,
    TResult Function(_GetSales value)? getSales,
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

  int get wheelId;
  @JsonKey(ignore: true)
  _$$GetWheelsByIdImplCopyWith<_$GetWheelsByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddWheelImplCopyWith<$Res> {
  factory _$$AddWheelImplCopyWith(
          _$AddWheelImpl value, $Res Function(_$AddWheelImpl) then) =
      __$$AddWheelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalesDetailEntity salesDetailEntity});
}

/// @nodoc
class __$$AddWheelImplCopyWithImpl<$Res>
    extends _$WheelEventCopyWithImpl<$Res, _$AddWheelImpl>
    implements _$$AddWheelImplCopyWith<$Res> {
  __$$AddWheelImplCopyWithImpl(
      _$AddWheelImpl _value, $Res Function(_$AddWheelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesDetailEntity = null,
  }) {
    return _then(_$AddWheelImpl(
      salesDetailEntity: null == salesDetailEntity
          ? _value.salesDetailEntity
          : salesDetailEntity // ignore: cast_nullable_to_non_nullable
              as SalesDetailEntity,
    ));
  }
}

/// @nodoc

class _$AddWheelImpl implements _AddWheel {
  const _$AddWheelImpl({required this.salesDetailEntity});

  @override
  final SalesDetailEntity salesDetailEntity;

  @override
  String toString() {
    return 'WheelEvent.addWheel(salesDetailEntity: $salesDetailEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWheelImpl &&
            (identical(other.salesDetailEntity, salesDetailEntity) ||
                other.salesDetailEntity == salesDetailEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salesDetailEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWheelImplCopyWith<_$AddWheelImpl> get copyWith =>
      __$$AddWheelImplCopyWithImpl<_$AddWheelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int wheelId) getWheelsById,
    required TResult Function(SalesDetailEntity salesDetailEntity) addWheel,
    required TResult Function() getSales,
  }) {
    return addWheel(salesDetailEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int wheelId)? getWheelsById,
    TResult? Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult? Function()? getSales,
  }) {
    return addWheel?.call(salesDetailEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int wheelId)? getWheelsById,
    TResult Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult Function()? getSales,
    required TResult orElse(),
  }) {
    if (addWheel != null) {
      return addWheel(salesDetailEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheelsById value) getWheelsById,
    required TResult Function(_AddWheel value) addWheel,
    required TResult Function(_GetSales value) getSales,
  }) {
    return addWheel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheelsById value)? getWheelsById,
    TResult? Function(_AddWheel value)? addWheel,
    TResult? Function(_GetSales value)? getSales,
  }) {
    return addWheel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheelsById value)? getWheelsById,
    TResult Function(_AddWheel value)? addWheel,
    TResult Function(_GetSales value)? getSales,
    required TResult orElse(),
  }) {
    if (addWheel != null) {
      return addWheel(this);
    }
    return orElse();
  }
}

abstract class _AddWheel implements WheelEvent {
  const factory _AddWheel(
      {required final SalesDetailEntity salesDetailEntity}) = _$AddWheelImpl;

  SalesDetailEntity get salesDetailEntity;
  @JsonKey(ignore: true)
  _$$AddWheelImplCopyWith<_$AddWheelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSalesImplCopyWith<$Res> {
  factory _$$GetSalesImplCopyWith(
          _$GetSalesImpl value, $Res Function(_$GetSalesImpl) then) =
      __$$GetSalesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSalesImplCopyWithImpl<$Res>
    extends _$WheelEventCopyWithImpl<$Res, _$GetSalesImpl>
    implements _$$GetSalesImplCopyWith<$Res> {
  __$$GetSalesImplCopyWithImpl(
      _$GetSalesImpl _value, $Res Function(_$GetSalesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSalesImpl implements _GetSales {
  const _$GetSalesImpl();

  @override
  String toString() {
    return 'WheelEvent.getSales()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSalesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int wheelId) getWheelsById,
    required TResult Function(SalesDetailEntity salesDetailEntity) addWheel,
    required TResult Function() getSales,
  }) {
    return getSales();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int wheelId)? getWheelsById,
    TResult? Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult? Function()? getSales,
  }) {
    return getSales?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int wheelId)? getWheelsById,
    TResult Function(SalesDetailEntity salesDetailEntity)? addWheel,
    TResult Function()? getSales,
    required TResult orElse(),
  }) {
    if (getSales != null) {
      return getSales();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWheelsById value) getWheelsById,
    required TResult Function(_AddWheel value) addWheel,
    required TResult Function(_GetSales value) getSales,
  }) {
    return getSales(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWheelsById value)? getWheelsById,
    TResult? Function(_AddWheel value)? addWheel,
    TResult? Function(_GetSales value)? getSales,
  }) {
    return getSales?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWheelsById value)? getWheelsById,
    TResult Function(_AddWheel value)? addWheel,
    TResult Function(_GetSales value)? getSales,
    required TResult orElse(),
  }) {
    if (getSales != null) {
      return getSales(this);
    }
    return orElse();
  }
}

abstract class _GetSales implements WheelEvent {
  const factory _GetSales() = _$GetSalesImpl;
}

/// @nodoc
mixin _$WheelState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  SalesDetailEntity? get wheelDetail => throw _privateConstructorUsedError;
  List<SalesEntity> get sales => throw _privateConstructorUsedError;

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
  $Res call(
      {StateStatus stateStatus,
      SalesDetailEntity? wheelDetail,
      List<SalesEntity> sales});

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
    Object? wheelDetail = freezed,
    Object? sales = null,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      wheelDetail: freezed == wheelDetail
          ? _value.wheelDetail
          : wheelDetail // ignore: cast_nullable_to_non_nullable
              as SalesDetailEntity?,
      sales: null == sales
          ? _value.sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesEntity>,
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
  $Res call(
      {StateStatus stateStatus,
      SalesDetailEntity? wheelDetail,
      List<SalesEntity> sales});

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
    Object? wheelDetail = freezed,
    Object? sales = null,
  }) {
    return _then(_$WheelStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      wheelDetail: freezed == wheelDetail
          ? _value.wheelDetail
          : wheelDetail // ignore: cast_nullable_to_non_nullable
              as SalesDetailEntity?,
      sales: null == sales
          ? _value._sales
          : sales // ignore: cast_nullable_to_non_nullable
              as List<SalesEntity>,
    ));
  }
}

/// @nodoc

class _$WheelStateImpl implements _WheelState {
  const _$WheelStateImpl(
      {required this.stateStatus,
      this.wheelDetail,
      required final List<SalesEntity> sales})
      : _sales = sales;

  @override
  final StateStatus stateStatus;
  @override
  final SalesDetailEntity? wheelDetail;
  final List<SalesEntity> _sales;
  @override
  List<SalesEntity> get sales {
    if (_sales is EqualUnmodifiableListView) return _sales;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sales);
  }

  @override
  String toString() {
    return 'WheelState(stateStatus: $stateStatus, wheelDetail: $wheelDetail, sales: $sales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WheelStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.wheelDetail, wheelDetail) ||
                other.wheelDetail == wheelDetail) &&
            const DeepCollectionEquality().equals(other._sales, _sales));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, wheelDetail,
      const DeepCollectionEquality().hash(_sales));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WheelStateImplCopyWith<_$WheelStateImpl> get copyWith =>
      __$$WheelStateImplCopyWithImpl<_$WheelStateImpl>(this, _$identity);
}

abstract class _WheelState implements WheelState {
  const factory _WheelState(
      {required final StateStatus stateStatus,
      final SalesDetailEntity? wheelDetail,
      required final List<SalesEntity> sales}) = _$WheelStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  SalesDetailEntity? get wheelDetail;
  @override
  List<SalesEntity> get sales;
  @override
  @JsonKey(ignore: true)
  _$$WheelStateImplCopyWith<_$WheelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
