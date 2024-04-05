import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/create_acceptance_entity.dart';

abstract class AcceptanceDataSource {
  Future<List<AcceptanceModel>> getAcceptance({
    DateTime? startDate,
    DateTime? endDate,
    int? storageId,
  });

  Future<void> addAcceptance(
      {required CreateAcceptanceEntity createAcceptanceEntity});

  Future<AcceptanceModel> getAcceptanceById({
    required int acceptanceId,
    // required String search,
  });
}
