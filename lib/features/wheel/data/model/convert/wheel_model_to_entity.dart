import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

@Injectable(as: Converter<WheelModel, WheelEntity>)
class WheelModelToEntity extends Converter<WheelModel, WheelEntity> {
  @override
  WheelEntity convert(WheelModel input) {
    return WheelEntity(
      amount: input.amount ?? 0,
      title: input.title,
    );
  }
}
