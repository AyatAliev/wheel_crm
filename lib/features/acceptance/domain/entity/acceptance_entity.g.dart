// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptance_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AcceptanceEntityCWProxy {
  AcceptanceEntity id(int? id);

  AcceptanceEntity whoAdded(String? whoAdded);

  AcceptanceEntity wheels(List<WheelEntity> wheels);

  AcceptanceEntity createAt(DateTime createAt);

  AcceptanceEntity storage(StorageEntity storage);

  AcceptanceEntity amount(int amount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AcceptanceEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AcceptanceEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AcceptanceEntity call({
    int? id,
    String? whoAdded,
    List<WheelEntity>? wheels,
    DateTime? createAt,
    StorageEntity? storage,
    int? amount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAcceptanceEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAcceptanceEntity.copyWith.fieldName(...)`
class _$AcceptanceEntityCWProxyImpl implements _$AcceptanceEntityCWProxy {
  const _$AcceptanceEntityCWProxyImpl(this._value);

  final AcceptanceEntity _value;

  @override
  AcceptanceEntity id(int? id) => this(id: id);

  @override
  AcceptanceEntity whoAdded(String? whoAdded) => this(whoAdded: whoAdded);

  @override
  AcceptanceEntity wheels(List<WheelEntity> wheels) => this(wheels: wheels);

  @override
  AcceptanceEntity createAt(DateTime createAt) => this(createAt: createAt);

  @override
  AcceptanceEntity storage(StorageEntity storage) => this(storage: storage);

  @override
  AcceptanceEntity amount(int amount) => this(amount: amount);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AcceptanceEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AcceptanceEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AcceptanceEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? whoAdded = const $CopyWithPlaceholder(),
    Object? wheels = const $CopyWithPlaceholder(),
    Object? createAt = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
  }) {
    return AcceptanceEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      whoAdded: whoAdded == const $CopyWithPlaceholder()
          ? _value.whoAdded
          // ignore: cast_nullable_to_non_nullable
          : whoAdded as String?,
      wheels: wheels == const $CopyWithPlaceholder() || wheels == null
          ? _value.wheels
          // ignore: cast_nullable_to_non_nullable
          : wheels as List<WheelEntity>,
      createAt: createAt == const $CopyWithPlaceholder() || createAt == null
          ? _value.createAt
          // ignore: cast_nullable_to_non_nullable
          : createAt as DateTime,
      storage: storage == const $CopyWithPlaceholder() || storage == null
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as StorageEntity,
      amount: amount == const $CopyWithPlaceholder() || amount == null
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int,
    );
  }
}

extension $AcceptanceEntityCopyWith on AcceptanceEntity {
  /// Returns a callable class that can be used as follows: `instanceOfAcceptanceEntity.copyWith(...)` or like so:`instanceOfAcceptanceEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AcceptanceEntityCWProxy get copyWith => _$AcceptanceEntityCWProxyImpl(this);
}
