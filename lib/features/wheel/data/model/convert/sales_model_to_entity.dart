import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart';
import 'package:wheel_crm/injection/injection.dart';

@Injectable(as: Converter<SalesModel, SalesEntity>)
class SalesModelToEntity extends Converter<SalesModel, SalesEntity> {
  @override
  SalesEntity convert(SalesModel input) {
    return SalesEntity(
      id: input.id,
      amount: input.amount ?? 0,
      createdAt: input.createdAt?.parceyyyyHyphenMMdd(),
      user: input.user,
      storage: input.storage != null ? getIt<Converter<StorageModel, StorageEntity>>().convert(input.storage!) : null,
    );
  }
}
