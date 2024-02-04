import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/data/model/acceptance_model.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/injection/injection.dart';

@Injectable(as: Converter<AcceptanceModel, AcceptanceEntity>)
class CalendarRoomModelToEntity extends Converter<AcceptanceModel, AcceptanceEntity> {
  @override
  AcceptanceEntity convert(AcceptanceModel input) {
    return AcceptanceEntity(
      id: input.id,
      whoAdded: input.user,
      wheels: (input.wheels ?? []).map((e) => getIt<Converter<WheelModel, WheelEntity>>().convert(e)).toList(),
      createAt: input.createdAt.parceyyyyHyphenMMdd(),
      storage: getIt<Converter<StorageModel, StorageEntity>>().convert(input.storage),
      amount: input.amount,
    );
  }
}