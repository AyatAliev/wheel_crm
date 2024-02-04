import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart';

abstract class AcceptanceDataSource {
  Future<List<AcceptanceModel>> getAcceptance({
    DateTime? startDate,
    DateTime? endDate,
    int? storageId,
  });
}
