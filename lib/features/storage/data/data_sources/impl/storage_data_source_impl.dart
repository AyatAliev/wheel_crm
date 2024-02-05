import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/core/network/http_paths.dart';
import 'package:wheel_crm/features/storage/data/data_sources/storage_data_source.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';

@Injectable(as: StorageDataSource)
class StorageDataSourceImpl extends StorageDataSource {
  final HttpClient _client;

  StorageDataSourceImpl(this._client);

  @override
  Future<List<StorageModel>> getStorages() async {
    final result = await _client.get(HttpPaths.getStorages);

    return (result.data as List).map((e) => StorageModel.fromJson(e)).toList();
  }

  @override
  Future<List<WheelModel>> getStoragesById({required int storageId}) async {
    final result = await _client.get(HttpPaths.getStoryById(storageId));

    return (result.data as List).map((e) => WheelModel.fromJson(e)).toList();
  }
}
