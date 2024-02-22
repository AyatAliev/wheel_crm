import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

class FunctionsUtils {
  static double getHeightList(List<WheelEntity> wheels) {
    switch (wheels.length) {
      case 0:
        return 150;
      case 1:
        return 190;
      case 2:
        return 230;
      case 3:
        return 270;
      case 4:
        return 320;
      default:
        return 320;
    }
  }
}