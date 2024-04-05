import 'package:fpdart/fpdart.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/network/entity/success.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/create_acceptance_entity.dart';

abstract class AcceptanceRepository {
  Future<Either<Failure, List<AcceptanceEntity>>> getAcceptance({
    DateTime? startDate,
    DateTime? endDate,
    int? storageId,
  });

  Future<Either<Failure, Success>> addAcceptance(
      {required CreateAcceptanceEntity createAcceptanceEntity});

  Future<Either<Failure, AcceptanceEntity>> getAcceptanceById({
    required int? acceptanceId,
    // required String search,
  });
}
