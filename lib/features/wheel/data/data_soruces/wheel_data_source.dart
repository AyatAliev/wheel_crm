import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart';

abstract class WheelDataSource {
  Future<SalesDetailModel> getWheelById({required int wheelId});
  Future<List<SalesModel>> getSales();
}
