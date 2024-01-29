// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptance_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AcceptanceEntityCWProxy {
  AcceptanceEntity count(int count);

  AcceptanceEntity createDate(DateTime createDate);

  AcceptanceEntity whoAdded(String whoAdded);

  AcceptanceEntity storage(String storage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AcceptanceEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AcceptanceEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AcceptanceEntity call({
    int? count,
    DateTime? createDate,
    String? whoAdded,
    String? storage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAcceptanceEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAcceptanceEntity.copyWith.fieldName(...)`
class _$AcceptanceEntityCWProxyImpl implements _$AcceptanceEntityCWProxy {
  const _$AcceptanceEntityCWProxyImpl(this._value);

  final AcceptanceEntity _value;

  @override
  AcceptanceEntity count(int count) => this(count: count);

  @override
  AcceptanceEntity createDate(DateTime createDate) =>
      this(createDate: createDate);

  @override
  AcceptanceEntity whoAdded(String whoAdded) => this(whoAdded: whoAdded);

  @override
  AcceptanceEntity storage(String storage) => this(storage: storage);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AcceptanceEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AcceptanceEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AcceptanceEntity call({
    Object? count = const $CopyWithPlaceholder(),
    Object? createDate = const $CopyWithPlaceholder(),
    Object? whoAdded = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
  }) {
    return AcceptanceEntity(
      count: count == const $CopyWithPlaceholder() || count == null
          ? _value.count
          // ignore: cast_nullable_to_non_nullable
          : count as int,
      createDate:
          createDate == const $CopyWithPlaceholder() || createDate == null
              ? _value.createDate
              // ignore: cast_nullable_to_non_nullable
              : createDate as DateTime,
      whoAdded: whoAdded == const $CopyWithPlaceholder() || whoAdded == null
          ? _value.whoAdded
          // ignore: cast_nullable_to_non_nullable
          : whoAdded as String,
      storage: storage == const $CopyWithPlaceholder() || storage == null
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as String,
    );
  }
}

extension $AcceptanceEntityCopyWith on AcceptanceEntity {
  /// Returns a callable class that can be used as follows: `instanceOfAcceptanceEntity.copyWith(...)` or like so:`instanceOfAcceptanceEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AcceptanceEntityCWProxy get copyWith => _$AcceptanceEntityCWProxyImpl(this);
}
