import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wheel_crm/features/profile/data/model/profile_model.dart';
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart';

@Injectable(as: Converter<FunctionsModel, FunctionsEntity>)
class CalendarRoomModelToEntity extends Converter<FunctionsModel, FunctionsEntity> {
  @override
  FunctionsEntity convert(FunctionsModel input) {
    return FunctionsEntity(
      defect: input.defect,
      returned: input.returned,
      createSales: input.createSales,
      createAcceptance: input.createAcceptance,
    );
  }
}
