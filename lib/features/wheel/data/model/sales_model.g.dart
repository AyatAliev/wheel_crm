// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SalesModelCWProxy {
  SalesModel id(int? id);

  SalesModel amount(int? amount);

  SalesModel createdAt(String? createdAt);

  SalesModel user(String? user);

  SalesModel storage(StorageModel? storage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesModel call({
    int? id,
    int? amount,
    String? createdAt,
    String? user,
    StorageModel? storage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSalesModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSalesModel.copyWith.fieldName(...)`
class _$SalesModelCWProxyImpl implements _$SalesModelCWProxy {
  const _$SalesModelCWProxyImpl(this._value);

  final SalesModel _value;

  @override
  SalesModel id(int? id) => this(id: id);

  @override
  SalesModel amount(int? amount) => this(amount: amount);

  @override
  SalesModel createdAt(String? createdAt) => this(createdAt: createdAt);

  @override
  SalesModel user(String? user) => this(user: user);

  @override
  SalesModel storage(StorageModel? storage) => this(storage: storage);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
  }) {
    return SalesModel(
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
          : createdAt as String?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as String?,
      storage: storage == const $CopyWithPlaceholder()
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as StorageModel?,
    );
  }
}

extension $SalesModelCopyWith on SalesModel {
  /// Returns a callable class that can be used as follows: `instanceOfSalesModel.copyWith(...)` or like so:`instanceOfSalesModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SalesModelCWProxy get copyWith => _$SalesModelCWProxyImpl(this);
}
