import 'package:wheel_crm/features/wheel/data/model/sales_detail_model.dart';
import 'package:wheel_crm/features/wheel/data/model/sales_model.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';

abstract class WheelDataSource {
  Future<SalesDetailModel> getWheelById({required int wheelId});
  Future<String> addWheel(SalesDetailEntity salesDetailEntity);
  Future<List<SalesModel>> getActions();
  Future<String> addActionDefect(SalesDetailEntity salesDetailEntity);
  Future<String> addActionReturn(SalesDetailEntity salesDetailEntity);
}
