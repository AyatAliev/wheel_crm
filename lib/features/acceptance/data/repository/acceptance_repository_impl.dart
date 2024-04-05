import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/entity/success.dart';
import 'package:wheel_crm/core/network/on_repository_exception.dart';
import 'package:wheel_crm/features/acceptance/data/data_sources/acceptance_data_source.dart';
import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/create_acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/domain/repository/acceptance_repository.dart';

@Injectable(as: AcceptanceRepository)
class AcceptanceRepositoryImpl extends AcceptanceRepository {
  final AcceptanceDataSource _dataSource;
  final Converter<AcceptanceModel, AcceptanceEntity> _converter;

  AcceptanceRepositoryImpl(this._dataSource, this._converter);

  @override
  Future<Either<Failure, List<AcceptanceEntity>>> getAcceptance(
      {DateTime? startDate, DateTime? endDate, int? storageId}) async {
    try {
      final result = await _dataSource.getAcceptance(
          startDate: startDate, endDate: endDate, storageId: storageId);

      final acceptances = result.map((e) => _converter.convert(e)).toList();
      return Right(acceptances);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, Success>> addAcceptance(
      {required CreateAcceptanceEntity createAcceptanceEntity}) async {
    try {
      await _dataSource.addAcceptance(
          createAcceptanceEntity: createAcceptanceEntity);

      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, AcceptanceEntity>> getAcceptanceById({
    required int? acceptanceId,
  }) async {
    try {
      final result =
          await _dataSource.getAcceptanceById(acceptanceId: acceptanceId!);
      print(result);

      final acceptance = _converter.convert(result);
      // print(acceptance);
      return Right(acceptance);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
