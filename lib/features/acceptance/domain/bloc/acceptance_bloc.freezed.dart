// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'acceptance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AcceptanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? storageId)
        getAcceptance,
    required TResult Function(CreateAcceptanceEntity createAcceptanceEntity)
        addAcceptance,
    required TResult Function(int? acceptanceId) getAcceptanceById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult? Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult? Function(int? acceptanceId)? getAcceptanceById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult Function(int? acceptanceId)? getAcceptanceById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAcceptance value) getAcceptance,
    required TResult Function(_AddAcceptance value) addAcceptance,
    required TResult Function(_GetAcceptanceById value) getAcceptanceById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAcceptance value)? getAcceptance,
    TResult? Function(_AddAcceptance value)? addAcceptance,
    TResult? Function(_GetAcceptanceById value)? getAcceptanceById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAcceptance value)? getAcceptance,
    TResult Function(_AddAcceptance value)? addAcceptance,
    TResult Function(_GetAcceptanceById value)? getAcceptanceById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptanceEventCopyWith<$Res> {
  factory $AcceptanceEventCopyWith(
          AcceptanceEvent value, $Res Function(AcceptanceEvent) then) =
      _$AcceptanceEventCopyWithImpl<$Res, AcceptanceEvent>;
}

/// @nodoc
class _$AcceptanceEventCopyWithImpl<$Res, $Val extends AcceptanceEvent>
    implements $AcceptanceEventCopyWith<$Res> {
  _$AcceptanceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAcceptanceImplCopyWith<$Res> {
  factory _$$GetAcceptanceImplCopyWith(
          _$GetAcceptanceImpl value, $Res Function(_$GetAcceptanceImpl) then) =
      __$$GetAcceptanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? startDate, DateTime? endDate, int? storageId});
}

/// @nodoc
class __$$GetAcceptanceImplCopyWithImpl<$Res>
    extends _$AcceptanceEventCopyWithImpl<$Res, _$GetAcceptanceImpl>
    implements _$$GetAcceptanceImplCopyWith<$Res> {
  __$$GetAcceptanceImplCopyWithImpl(
      _$GetAcceptanceImpl _value, $Res Function(_$GetAcceptanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? storageId = freezed,
  }) {
    return _then(_$GetAcceptanceImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      storageId: freezed == storageId
          ? _value.storageId
          : storageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAcceptanceImpl implements _GetAcceptance {
  const _$GetAcceptanceImpl({this.startDate, this.endDate, this.storageId});

  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final int? storageId;

  @override
  String toString() {
    return 'AcceptanceEvent.getAcceptance(startDate: $startDate, endDate: $endDate, storageId: $storageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAcceptanceImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.storageId, storageId) ||
                other.storageId == storageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate, storageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAcceptanceImplCopyWith<_$GetAcceptanceImpl> get copyWith =>
      __$$GetAcceptanceImplCopyWithImpl<_$GetAcceptanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? storageId)
        getAcceptance,
    required TResult Function(CreateAcceptanceEntity createAcceptanceEntity)
        addAcceptance,
    required TResult Function(int? acceptanceId) getAcceptanceById,
  }) {
    return getAcceptance(startDate, endDate, storageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult? Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult? Function(int? acceptanceId)? getAcceptanceById,
  }) {
    return getAcceptance?.call(startDate, endDate, storageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult Function(int? acceptanceId)? getAcceptanceById,
    required TResult orElse(),
  }) {
    if (getAcceptance != null) {
      return getAcceptance(startDate, endDate, storageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAcceptance value) getAcceptance,
    required TResult Function(_AddAcceptance value) addAcceptance,
    required TResult Function(_GetAcceptanceById value) getAcceptanceById,
  }) {
    return getAcceptance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAcceptance value)? getAcceptance,
    TResult? Function(_AddAcceptance value)? addAcceptance,
    TResult? Function(_GetAcceptanceById value)? getAcceptanceById,
  }) {
    return getAcceptance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAcceptance value)? getAcceptance,
    TResult Function(_AddAcceptance value)? addAcceptance,
    TResult Function(_GetAcceptanceById value)? getAcceptanceById,
    required TResult orElse(),
  }) {
    if (getAcceptance != null) {
      return getAcceptance(this);
    }
    return orElse();
  }
}

abstract class _GetAcceptance implements AcceptanceEvent {
  const factory _GetAcceptance(
      {final DateTime? startDate,
      final DateTime? endDate,
      final int? storageId}) = _$GetAcceptanceImpl;

  DateTime? get startDate;
  DateTime? get endDate;
  int? get storageId;
  @JsonKey(ignore: true)
  _$$GetAcceptanceImplCopyWith<_$GetAcceptanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAcceptanceImplCopyWith<$Res> {
  factory _$$AddAcceptanceImplCopyWith(
          _$AddAcceptanceImpl value, $Res Function(_$AddAcceptanceImpl) then) =
      __$$AddAcceptanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateAcceptanceEntity createAcceptanceEntity});
}

/// @nodoc
class __$$AddAcceptanceImplCopyWithImpl<$Res>
    extends _$AcceptanceEventCopyWithImpl<$Res, _$AddAcceptanceImpl>
    implements _$$AddAcceptanceImplCopyWith<$Res> {
  __$$AddAcceptanceImplCopyWithImpl(
      _$AddAcceptanceImpl _value, $Res Function(_$AddAcceptanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createAcceptanceEntity = null,
  }) {
    return _then(_$AddAcceptanceImpl(
      createAcceptanceEntity: null == createAcceptanceEntity
          ? _value.createAcceptanceEntity
          : createAcceptanceEntity // ignore: cast_nullable_to_non_nullable
              as CreateAcceptanceEntity,
    ));
  }
}

/// @nodoc

class _$AddAcceptanceImpl implements _AddAcceptance {
  const _$AddAcceptanceImpl({required this.createAcceptanceEntity});

  @override
  final CreateAcceptanceEntity createAcceptanceEntity;

  @override
  String toString() {
    return 'AcceptanceEvent.addAcceptance(createAcceptanceEntity: $createAcceptanceEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAcceptanceImpl &&
            (identical(other.createAcceptanceEntity, createAcceptanceEntity) ||
                other.createAcceptanceEntity == createAcceptanceEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createAcceptanceEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAcceptanceImplCopyWith<_$AddAcceptanceImpl> get copyWith =>
      __$$AddAcceptanceImplCopyWithImpl<_$AddAcceptanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? storageId)
        getAcceptance,
    required TResult Function(CreateAcceptanceEntity createAcceptanceEntity)
        addAcceptance,
    required TResult Function(int? acceptanceId) getAcceptanceById,
  }) {
    return addAcceptance(createAcceptanceEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult? Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult? Function(int? acceptanceId)? getAcceptanceById,
  }) {
    return addAcceptance?.call(createAcceptanceEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult Function(int? acceptanceId)? getAcceptanceById,
    required TResult orElse(),
  }) {
    if (addAcceptance != null) {
      return addAcceptance(createAcceptanceEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAcceptance value) getAcceptance,
    required TResult Function(_AddAcceptance value) addAcceptance,
    required TResult Function(_GetAcceptanceById value) getAcceptanceById,
  }) {
    return addAcceptance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAcceptance value)? getAcceptance,
    TResult? Function(_AddAcceptance value)? addAcceptance,
    TResult? Function(_GetAcceptanceById value)? getAcceptanceById,
  }) {
    return addAcceptance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAcceptance value)? getAcceptance,
    TResult Function(_AddAcceptance value)? addAcceptance,
    TResult Function(_GetAcceptanceById value)? getAcceptanceById,
    required TResult orElse(),
  }) {
    if (addAcceptance != null) {
      return addAcceptance(this);
    }
    return orElse();
  }
}

abstract class _AddAcceptance implements AcceptanceEvent {
  const factory _AddAcceptance(
          {required final CreateAcceptanceEntity createAcceptanceEntity}) =
      _$AddAcceptanceImpl;

  CreateAcceptanceEntity get createAcceptanceEntity;
  @JsonKey(ignore: true)
  _$$AddAcceptanceImplCopyWith<_$AddAcceptanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAcceptanceByIdImplCopyWith<$Res> {
  factory _$$GetAcceptanceByIdImplCopyWith(_$GetAcceptanceByIdImpl value,
          $Res Function(_$GetAcceptanceByIdImpl) then) =
      __$$GetAcceptanceByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? acceptanceId});
}

/// @nodoc
class __$$GetAcceptanceByIdImplCopyWithImpl<$Res>
    extends _$AcceptanceEventCopyWithImpl<$Res, _$GetAcceptanceByIdImpl>
    implements _$$GetAcceptanceByIdImplCopyWith<$Res> {
  __$$GetAcceptanceByIdImplCopyWithImpl(_$GetAcceptanceByIdImpl _value,
      $Res Function(_$GetAcceptanceByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptanceId = freezed,
  }) {
    return _then(_$GetAcceptanceByIdImpl(
      acceptanceId: freezed == acceptanceId
          ? _value.acceptanceId
          : acceptanceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetAcceptanceByIdImpl implements _GetAcceptanceById {
  const _$GetAcceptanceByIdImpl({required this.acceptanceId});

  @override
  final int? acceptanceId;

  @override
  String toString() {
    return 'AcceptanceEvent.getAcceptanceById(acceptanceId: $acceptanceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAcceptanceByIdImpl &&
            (identical(other.acceptanceId, acceptanceId) ||
                other.acceptanceId == acceptanceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, acceptanceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAcceptanceByIdImplCopyWith<_$GetAcceptanceByIdImpl> get copyWith =>
      __$$GetAcceptanceByIdImplCopyWithImpl<_$GetAcceptanceByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? startDate, DateTime? endDate, int? storageId)
        getAcceptance,
    required TResult Function(CreateAcceptanceEntity createAcceptanceEntity)
        addAcceptance,
    required TResult Function(int? acceptanceId) getAcceptanceById,
  }) {
    return getAcceptanceById(acceptanceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult? Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult? Function(int? acceptanceId)? getAcceptanceById,
  }) {
    return getAcceptanceById?.call(acceptanceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? startDate, DateTime? endDate, int? storageId)?
        getAcceptance,
    TResult Function(CreateAcceptanceEntity createAcceptanceEntity)?
        addAcceptance,
    TResult Function(int? acceptanceId)? getAcceptanceById,
    required TResult orElse(),
  }) {
    if (getAcceptanceById != null) {
      return getAcceptanceById(acceptanceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAcceptance value) getAcceptance,
    required TResult Function(_AddAcceptance value) addAcceptance,
    required TResult Function(_GetAcceptanceById value) getAcceptanceById,
  }) {
    return getAcceptanceById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAcceptance value)? getAcceptance,
    TResult? Function(_AddAcceptance value)? addAcceptance,
    TResult? Function(_GetAcceptanceById value)? getAcceptanceById,
  }) {
    return getAcceptanceById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAcceptance value)? getAcceptance,
    TResult Function(_AddAcceptance value)? addAcceptance,
    TResult Function(_GetAcceptanceById value)? getAcceptanceById,
    required TResult orElse(),
  }) {
    if (getAcceptanceById != null) {
      return getAcceptanceById(this);
    }
    return orElse();
  }
}

abstract class _GetAcceptanceById implements AcceptanceEvent {
  const factory _GetAcceptanceById({required final int? acceptanceId}) =
      _$GetAcceptanceByIdImpl;

  int? get acceptanceId;
  @JsonKey(ignore: true)
  _$$GetAcceptanceByIdImplCopyWith<_$GetAcceptanceByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcceptanceState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  List<AcceptanceEntity> get acceptanceEntitys =>
      throw _privateConstructorUsedError;
  AcceptanceEntity? get acceptanceEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AcceptanceStateCopyWith<AcceptanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptanceStateCopyWith<$Res> {
  factory $AcceptanceStateCopyWith(
          AcceptanceState value, $Res Function(AcceptanceState) then) =
      _$AcceptanceStateCopyWithImpl<$Res, AcceptanceState>;
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<AcceptanceEntity> acceptanceEntitys,
      AcceptanceEntity? acceptanceEntity});

  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class _$AcceptanceStateCopyWithImpl<$Res, $Val extends AcceptanceState>
    implements $AcceptanceStateCopyWith<$Res> {
  _$AcceptanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? acceptanceEntitys = null,
    Object? acceptanceEntity = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      acceptanceEntitys: null == acceptanceEntitys
          ? _value.acceptanceEntitys
          : acceptanceEntitys // ignore: cast_nullable_to_non_nullable
              as List<AcceptanceEntity>,
      acceptanceEntity: freezed == acceptanceEntity
          ? _value.acceptanceEntity
          : acceptanceEntity // ignore: cast_nullable_to_non_nullable
              as AcceptanceEntity?,
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
abstract class _$$AcceptanceStateImplCopyWith<$Res>
    implements $AcceptanceStateCopyWith<$Res> {
  factory _$$AcceptanceStateImplCopyWith(_$AcceptanceStateImpl value,
          $Res Function(_$AcceptanceStateImpl) then) =
      __$$AcceptanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus stateStatus,
      List<AcceptanceEntity> acceptanceEntitys,
      AcceptanceEntity? acceptanceEntity});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
}

/// @nodoc
class __$$AcceptanceStateImplCopyWithImpl<$Res>
    extends _$AcceptanceStateCopyWithImpl<$Res, _$AcceptanceStateImpl>
    implements _$$AcceptanceStateImplCopyWith<$Res> {
  __$$AcceptanceStateImplCopyWithImpl(
      _$AcceptanceStateImpl _value, $Res Function(_$AcceptanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? acceptanceEntitys = null,
    Object? acceptanceEntity = freezed,
  }) {
    return _then(_$AcceptanceStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      acceptanceEntitys: null == acceptanceEntitys
          ? _value._acceptanceEntitys
          : acceptanceEntitys // ignore: cast_nullable_to_non_nullable
              as List<AcceptanceEntity>,
      acceptanceEntity: freezed == acceptanceEntity
          ? _value.acceptanceEntity
          : acceptanceEntity // ignore: cast_nullable_to_non_nullable
              as AcceptanceEntity?,
    ));
  }
}

/// @nodoc

class _$AcceptanceStateImpl implements _AcceptanceState {
  const _$AcceptanceStateImpl(
      {required this.stateStatus,
      required final List<AcceptanceEntity> acceptanceEntitys,
      required this.acceptanceEntity})
      : _acceptanceEntitys = acceptanceEntitys;

  @override
  final StateStatus stateStatus;
  final List<AcceptanceEntity> _acceptanceEntitys;
  @override
  List<AcceptanceEntity> get acceptanceEntitys {
    if (_acceptanceEntitys is EqualUnmodifiableListView)
      return _acceptanceEntitys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_acceptanceEntitys);
  }

  @override
  final AcceptanceEntity? acceptanceEntity;

  @override
  String toString() {
    return 'AcceptanceState(stateStatus: $stateStatus, acceptanceEntitys: $acceptanceEntitys, acceptanceEntity: $acceptanceEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptanceStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            const DeepCollectionEquality()
                .equals(other._acceptanceEntitys, _acceptanceEntitys) &&
            (identical(other.acceptanceEntity, acceptanceEntity) ||
                other.acceptanceEntity == acceptanceEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stateStatus,
      const DeepCollectionEquality().hash(_acceptanceEntitys),
      acceptanceEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptanceStateImplCopyWith<_$AcceptanceStateImpl> get copyWith =>
      __$$AcceptanceStateImplCopyWithImpl<_$AcceptanceStateImpl>(
          this, _$identity);
}

abstract class _AcceptanceState implements AcceptanceState {
  const factory _AcceptanceState(
          {required final StateStatus stateStatus,
          required final List<AcceptanceEntity> acceptanceEntitys,
          required final AcceptanceEntity? acceptanceEntity}) =
      _$AcceptanceStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  List<AcceptanceEntity> get acceptanceEntitys;
  @override
  AcceptanceEntity? get acceptanceEntity;
  @override
  @JsonKey(ignore: true)
  _$$AcceptanceStateImplCopyWith<_$AcceptanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
