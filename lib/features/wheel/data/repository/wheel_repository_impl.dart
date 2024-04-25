import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/on_repository_exception.dart';
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart';
import 'package:wheel_crm/features/wheel/domain/repository/wheel_repository.dart';

@Injectable(as: WheelRepository)
class WheelRepositoryImpl extends WheelRepository {
  final WheelDataSource _dataSource;
  final Converter<SalesDetailModel, SalesDetailEntity> _converter;
  final Converter<SalesModel, SalesEntity> _salesConverter;

  WheelRepositoryImpl(this._dataSource, this._converter, this._salesConverter);

  @override
  Future<Either<Failure, SalesDetailEntity>> getWheelsById({required int wheelId}) async {
    try {
      final result = await _dataSource.getWheelById(wheelId: wheelId);

      return Right(_converter.convert(result));
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, List<SalesEntity>>> getActions() async {
    try {
      final result = await _dataSource.getActions();

      final sales = result.map((e) => _salesConverter.convert(e)).toList();
      return Right(sales);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, String>> addWheel(SalesDetailEntity salesDetailEntity) async {
    try {
      final result = await _dataSource.addWheel(salesDetailEntity);

      return Right(result);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, String>> addActionDefect(SalesDetailEntity salesDetailEntity) async {
    try {
      final result = await _dataSource.addActionDefect(salesDetailEntity);

      return Right(result);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, String>> addActionReturn(SalesDetailEntity salesDetailEntity) async {
    try {
      final result = await _dataSource.addActionReturn(salesDetailEntity);

      return Right(result);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
