import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';

@Injectable(as: Converter<StorageModel, StorageEntity>)
class StorageModelToEntity extends Converter<StorageModel, StorageEntity> {
  @override
  StorageEntity convert(StorageModel input) {
    return StorageEntity(
      id: input.id,
      title: input.title,
    );
  }
}
