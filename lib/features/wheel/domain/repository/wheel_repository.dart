import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart';

abstract class WheelRepository {
  Future<Either<Failure, SalesDetailEntity>> getWheelsById({required int wheelId});
  Future<Either<Failure, List<SalesEntity>>> getActions();
  Future<Either<Failure, String>> addWheel(SalesDetailEntity salesDetailEntity);
  Future<Either<Failure, String>> addActionDefect(SalesDetailEntity salesDetailEntity);
  Future<Either<Failure, String>> addActionReturn(SalesDetailEntity salesDetailEntity);
  Future<Either<Failure, String>> actionSales(SalesDetailEntity salesDetailEntity);
}
