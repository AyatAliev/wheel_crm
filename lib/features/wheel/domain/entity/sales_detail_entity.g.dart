// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_detail_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SalesDetailEntityCWProxy {
  SalesDetailEntity id(int? id);

  SalesDetailEntity user(String? user);

  SalesDetailEntity storage(StorageEntity storage);

  SalesDetailEntity createdAt(DateTime createdAt);

  SalesDetailEntity wheels(List<WheelEntity> wheels);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesDetailEntity call({
    int? id,
    String? user,
    StorageEntity? storage,
    DateTime? createdAt,
    List<WheelEntity>? wheels,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSalesDetailEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSalesDetailEntity.copyWith.fieldName(...)`
class _$SalesDetailEntityCWProxyImpl implements _$SalesDetailEntityCWProxy {
  const _$SalesDetailEntityCWProxyImpl(this._value);

  final SalesDetailEntity _value;

  @override
  SalesDetailEntity id(int? id) => this(id: id);

  @override
  SalesDetailEntity user(String? user) => this(user: user);

  @override
  SalesDetailEntity storage(StorageEntity storage) => this(storage: storage);

  @override
  SalesDetailEntity createdAt(DateTime createdAt) => this(createdAt: createdAt);

  @override
  SalesDetailEntity wheels(List<WheelEntity> wheels) => this(wheels: wheels);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesDetailEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesDetailEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesDetailEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? wheels = const $CopyWithPlaceholder(),
  }) {
    return SalesDetailEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as String?,
      storage: storage == const $CopyWithPlaceholder() || storage == null
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as StorageEntity,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      wheels: wheels == const $CopyWithPlaceholder() || wheels == null
          ? _value.wheels
          // ignore: cast_nullable_to_non_nullable
          : wheels as List<WheelEntity>,
    );
  }
}

extension $SalesDetailEntityCopyWith on SalesDetailEntity {
  /// Returns a callable class that can be used as follows: `instanceOfSalesDetailEntity.copyWith(...)` or like so:`instanceOfSalesDetailEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SalesDetailEntityCWProxy get copyWith =>
      _$SalesDetailEntityCWProxyImpl(this);
}
