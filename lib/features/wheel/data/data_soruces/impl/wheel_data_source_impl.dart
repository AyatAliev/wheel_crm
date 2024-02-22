import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart';

@Injectable(as: WheelDataSource)
class WheelDataSourceImpl extends WheelDataSource {
  final HttpClient _client;

  WheelDataSourceImpl(this._client);

  @override
  Future<SalesDetailModel> getWheelById({required int wheelId}) async {
    final result = await _client.get(HttpPaths.getSaleById(wheelId));

    return SalesDetailModel.fromJson(result.data);
  }

  @override
  Future<List<SalesModel>> getSales() async {
    final result = await _client.get(HttpPaths.getSales);

    return (result.data as List).map((e) => SalesModel.fromJson(e)).toList();
  }
}
