import 'package:wheel_crm/features/storage/data/model/storage_model.dart';

abstract class StorageDataSource {
  Future<List<StorageModel>> getStorages();
}
