import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';

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
  Future<List<SalesModel>> getActions() async {
    final result = await _client.get(HttpPaths.getActions);

    return (result.data as List).map((e) => SalesModel.fromJson(e)).toList();
  }

  @override
  Future<String> addWheel(SalesDetailEntity salesDetailEntity) async {
    final result = await _client.post(HttpPaths.getActions, data: salesDetailEntity.toJson());

    return result.data['msg'];
  }

  @override
  Future<String> addActionDefect(SalesDetailEntity salesDetailEntity) async {
    final result = await _client.post(HttpPaths.defect, data: salesDetailEntity.toJson());

    return result.data['msg'];
  }

  @override
  Future<String> addActionReturn(SalesDetailEntity salesDetailEntity) async {
    final result = await _client.post(HttpPaths.returned, data: salesDetailEntity.toJson());

    return result.data['msg'];
  }

  @override
  Future<String> addActionSales(SalesDetailEntity salesDetailEntity) async {
    final result = await _client.post(HttpPaths.sales, data: salesDetailEntity.toJson());

    return result.data['msg'];
  }
}
