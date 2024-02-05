import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';

abstract class WheelDataSource {
  Future<List<WheelModel>> getWheelById({required int wheelId});
}
