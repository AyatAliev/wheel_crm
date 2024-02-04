// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StorageEntityCWProxy {
  StorageEntity id(int? id);

  StorageEntity title(String? title);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StorageEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StorageEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StorageEntity call({
    int? id,
    String? title,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStorageEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStorageEntity.copyWith.fieldName(...)`
class _$StorageEntityCWProxyImpl implements _$StorageEntityCWProxy {
  const _$StorageEntityCWProxyImpl(this._value);

  final StorageEntity _value;

  @override
  StorageEntity id(int? id) => this(id: id);

  @override
  StorageEntity title(String? title) => this(title: title);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StorageEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StorageEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StorageEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
  }) {
    return StorageEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
    );
  }
}

extension $StorageEntityCopyWith on StorageEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStorageEntity.copyWith(...)` or like so:`instanceOfStorageEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StorageEntityCWProxy get copyWith => _$StorageEntityCWProxyImpl(this);
}
