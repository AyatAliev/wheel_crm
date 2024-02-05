import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/on_repository_exception.dart';
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/features/wheel/domain/repository/wheel_repository.dart';

@Injectable(as: WheelRepository)
class WheelRepositoryImpl extends WheelRepository {
  final WheelDataSource _dataSource;
  final Converter<WheelModel, WheelEntity> _converter;

  WheelRepositoryImpl(this._dataSource, this._converter);

  @override
  Future<Either<Failure, List<WheelEntity>>> getWheelsById({required int wheelId}) async {
    try {
      final result = await _dataSource.getWheelById(wheelId: wheelId);

      final wheels = result.map((e) => _converter.convert(e)).toList();
      return Right(wheels);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
