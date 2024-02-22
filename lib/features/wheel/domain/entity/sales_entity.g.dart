// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SalesEntityCWProxy {
  SalesEntity id(int? id);

  SalesEntity amount(int? amount);

  SalesEntity createdAt(DateTime? createdAt);

  SalesEntity user(String? user);

  SalesEntity storage(StorageEntity? storage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesEntity call({
    int? id,
    int? amount,
    DateTime? createdAt,
    String? user,
    StorageEntity? storage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSalesEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSalesEntity.copyWith.fieldName(...)`
class _$SalesEntityCWProxyImpl implements _$SalesEntityCWProxy {
  const _$SalesEntityCWProxyImpl(this._value);

  final SalesEntity _value;

  @override
  SalesEntity id(int? id) => this(id: id);

  @override
  SalesEntity amount(int? amount) => this(amount: amount);

  @override
  SalesEntity createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  SalesEntity user(String? user) => this(user: user);

  @override
  SalesEntity storage(StorageEntity? storage) => this(storage: storage);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
  }) {
    return SalesEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as String?,
      storage: storage == const $CopyWithPlaceholder()
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as StorageEntity?,
    );
  }
}

extension $SalesEntityCopyWith on SalesEntity {
  /// Returns a callable class that can be used as follows: `instanceOfSalesEntity.copyWith(...)` or like so:`instanceOfSalesEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SalesEntityCWProxy get copyWith => _$SalesEntityCWProxyImpl(this);
}
