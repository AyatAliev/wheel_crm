import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/injection/injection.dart';

@Injectable(as: Converter<SalesDetailModel, SalesDetailEntity>)
class SalesDetailModelToEntity extends Converter<SalesDetailModel, SalesDetailEntity> {
  @override
  SalesDetailEntity convert(SalesDetailModel input) {
    return SalesDetailEntity(
      id: input.id,
      createdAt: input.createdAt.parceyyyyHyphenMMdd(),
      user: input.user,
      storage: getIt<Converter<StorageModel, StorageEntity>>().convert(input.storage),
      wheels: input.wheels.map((e) => getIt<Converter<WheelModel, WheelEntity>>().convert(e)).toList(),
      season: input.season,
    );
  }
}
