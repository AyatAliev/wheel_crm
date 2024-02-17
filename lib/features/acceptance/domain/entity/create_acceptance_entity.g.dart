// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_acceptance_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAcceptanceEntityCWProxy {
  CreateAcceptanceEntity createAt(DateTime createAt);

  CreateAcceptanceEntity storage(int storage);

  CreateAcceptanceEntity wheels(List<WheelEntity> wheels);

  CreateAcceptanceEntity newWheels(List<WheelEntity> newWheels);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAcceptanceEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAcceptanceEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAcceptanceEntity call({
    DateTime? createAt,
    int? storage,
    List<WheelEntity>? wheels,
    List<WheelEntity>? newWheels,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateAcceptanceEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateAcceptanceEntity.copyWith.fieldName(...)`
class _$CreateAcceptanceEntityCWProxyImpl
    implements _$CreateAcceptanceEntityCWProxy {
  const _$CreateAcceptanceEntityCWProxyImpl(this._value);

  final CreateAcceptanceEntity _value;

  @override
  CreateAcceptanceEntity createAt(DateTime createAt) =>
      this(createAt: createAt);

  @override
  CreateAcceptanceEntity storage(int storage) => this(storage: storage);

  @override
  CreateAcceptanceEntity wheels(List<WheelEntity> wheels) =>
      this(wheels: wheels);

  @override
  CreateAcceptanceEntity newWheels(List<WheelEntity> newWheels) =>
      this(newWheels: newWheels);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAcceptanceEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAcceptanceEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAcceptanceEntity call({
    Object? createAt = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
    Object? wheels = const $CopyWithPlaceholder(),
    Object? newWheels = const $CopyWithPlaceholder(),
  }) {
    return CreateAcceptanceEntity(
      createAt: createAt == const $CopyWithPlaceholder() || createAt == null
          ? _value.createAt
          // ignore: cast_nullable_to_non_nullable
          : createAt as DateTime,
      storage: storage == const $CopyWithPlaceholder() || storage == null
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as int,
      wheels: wheels == const $CopyWithPlaceholder() || wheels == null
          ? _value.wheels
          // ignore: cast_nullable_to_non_nullable
          : wheels as List<WheelEntity>,
      newWheels: newWheels == const $CopyWithPlaceholder() || newWheels == null
          ? _value.newWheels
          // ignore: cast_nullable_to_non_nullable
          : newWheels as List<WheelEntity>,
    );
  }
}

extension $CreateAcceptanceEntityCopyWith on CreateAcceptanceEntity {
  /// Returns a callable class that can be used as follows: `instanceOfCreateAcceptanceEntity.copyWith(...)` or like so:`instanceOfCreateAcceptanceEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateAcceptanceEntityCWProxy get copyWith =>
      _$CreateAcceptanceEntityCWProxyImpl(this);
}
