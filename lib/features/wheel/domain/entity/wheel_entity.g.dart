// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wheel_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WheelEntityCWProxy {
  WheelEntity id(int? id);

  WheelEntity amount(int? amount);

  WheelEntity title(String? title);

  WheelEntity season(String? season);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WheelEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WheelEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  WheelEntity call({
    int? id,
    int? amount,
    String? title,
    String? season,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWheelEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWheelEntity.copyWith.fieldName(...)`
class _$WheelEntityCWProxyImpl implements _$WheelEntityCWProxy {
  const _$WheelEntityCWProxyImpl(this._value);

  final WheelEntity _value;

  @override
  WheelEntity id(int? id) => this(id: id);

  @override
  WheelEntity amount(int? amount) => this(amount: amount);

  @override
  WheelEntity title(String? title) => this(title: title);

  @override
  WheelEntity season(String? season) => this(season: season);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WheelEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WheelEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  WheelEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? season = const $CopyWithPlaceholder(),
  }) {
    return WheelEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      season: season == const $CopyWithPlaceholder()
          ? _value.season
          // ignore: cast_nullable_to_non_nullable
          : season as String?,
    );
  }
}

extension $WheelEntityCopyWith on WheelEntity {
  /// Returns a callable class that can be used as follows: `instanceOfWheelEntity.copyWith(...)` or like so:`instanceOfWheelEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WheelEntityCWProxy get copyWith => _$WheelEntityCWProxyImpl(this);
}
