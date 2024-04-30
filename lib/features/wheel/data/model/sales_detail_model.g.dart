// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_detail_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SalesDetailModelCWProxy {
  SalesDetailModel id(int id);

  SalesDetailModel storage(StorageModel storage);

  SalesDetailModel createdAt(String createdAt);

  SalesDetailModel wheels(List<WheelModel> wheels);

  SalesDetailModel user(String user);

  SalesDetailModel season(String season);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesDetailModel call({
    int? id,
    StorageModel? storage,
    String? createdAt,
    List<WheelModel>? wheels,
    String? user,
    String? season,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSalesDetailModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSalesDetailModel.copyWith.fieldName(...)`
class _$SalesDetailModelCWProxyImpl implements _$SalesDetailModelCWProxy {
  const _$SalesDetailModelCWProxyImpl(this._value);

  final SalesDetailModel _value;

  @override
  SalesDetailModel id(int id) => this(id: id);

  @override
  SalesDetailModel storage(StorageModel storage) => this(storage: storage);

  @override
  SalesDetailModel createdAt(String createdAt) => this(createdAt: createdAt);

  @override
  SalesDetailModel wheels(List<WheelModel> wheels) => this(wheels: wheels);

  @override
  SalesDetailModel user(String user) => this(user: user);

  @override
  SalesDetailModel season(String season) => this(season: season);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SalesDetailModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SalesDetailModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SalesDetailModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? storage = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? wheels = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? season = const $CopyWithPlaceholder(),
  }) {
    return SalesDetailModel(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      storage: storage == const $CopyWithPlaceholder() || storage == null
          ? _value.storage
          // ignore: cast_nullable_to_non_nullable
          : storage as StorageModel,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      wheels: wheels == const $CopyWithPlaceholder() || wheels == null
          ? _value.wheels
          // ignore: cast_nullable_to_non_nullable
          : wheels as List<WheelModel>,
      user: user == const $CopyWithPlaceholder() || user == null
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as String,
      season: season == const $CopyWithPlaceholder() || season == null
          ? _value.season
          // ignore: cast_nullable_to_non_nullable
          : season as String,
    );
  }
}

extension $SalesDetailModelCopyWith on SalesDetailModel {
  /// Returns a callable class that can be used as follows: `instanceOfSalesDetailModel.copyWith(...)` or like so:`instanceOfSalesDetailModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SalesDetailModelCWProxy get copyWith => _$SalesDetailModelCWProxyImpl(this);
}
