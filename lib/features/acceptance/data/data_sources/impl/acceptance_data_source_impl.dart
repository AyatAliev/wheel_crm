import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/acceptance/data/data_sources/acceptance_data_source.dart';
import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/create_acceptance_entity.dart';

@Injectable(as: AcceptanceDataSource)
class AcceptanceDataSourceImpl extends AcceptanceDataSource {
  final HttpClient _client;

  AcceptanceDataSourceImpl(this._client);

  @override
  Future<List<AcceptanceModel>> getAcceptance({DateTime? startDate, DateTime? endDate, int? storageId}) async {
    final result = await _client.get(
      HttpPaths.acceptance,
      queryParameters: {
        if (startDate != null) "start_date": startDate,
        if (endDate != null) "end_date": endDate,
        if (storageId != null) "storage_id": storageId,
      },
    );

    return (result.data as List).map((e) => AcceptanceModel.fromJson(e)).toList();
  }

  @override
  Future<void> addAcceptance({required CreateAcceptanceEntity createAcceptanceEntity}) async {
    await _client.post(HttpPaths.acceptance, data: createAcceptanceEntity.toJson());
  }

  @override
  Future<AcceptanceModel> getAcceptanceById({required int id}) async {
    final result = await _client.get(HttpPaths.getAcceptanceById(id));

    return AcceptanceModel.fromJson(result.data);
  }
}
