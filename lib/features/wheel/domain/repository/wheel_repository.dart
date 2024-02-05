import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

abstract class WheelRepository {
  Future<Either<Failure, List<WheelEntity>>> getWheelsById({required int wheelId});
}
