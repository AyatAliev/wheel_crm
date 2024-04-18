import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';

abstract class StorageDataSource {
  Future<List<StorageModel>> getStorages();

  Future<List<WheelModel>> getStoragesById({
    required int storageId,
    required String search,
    String? season,
  });
}
