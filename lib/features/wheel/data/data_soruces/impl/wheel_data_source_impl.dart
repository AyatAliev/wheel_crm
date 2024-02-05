import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/wheel/data/data_soruces/wheel_data_source.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';

@Injectable(as: WheelDataSource)
class WheelDataSourceImpl extends WheelDataSource {
  final HttpClient _client;

  WheelDataSourceImpl(this._client);

  @override
  Future<List<WheelModel>> getWheelById({required int wheelId}) async {
    final result = await _client.get(HttpPaths.getWheelById(wheelId));

    return (result.data as List).map((e) => WheelModel.fromJson(e)).toList();
  }
}
