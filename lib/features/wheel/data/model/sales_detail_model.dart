import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';

part 'sales_detail_model.g.dart';

@CopyWith()
class SalesDetailModel {
  final int id;
  final StorageModel storage;
  final String createdAt;
  final String season;
  final List<WheelModel> wheels;
  final String user;

  SalesDetailModel({
    required this.id,
    required this.storage,
    required this.createdAt,
    required this.wheels,
    required this.user,
    required this.season,
  });

  factory SalesDetailModel.fromJson(Map<String, dynamic> json) {
    return SalesDetailModel(
      id: json['id'],
      createdAt: json['created_at'],
      user: json['user'],
      storage: StorageModel.fromJson(json['storage']),
      wheels: (json['wheels'] as List).map((e) => WheelModel.fromJson(e)).toList(),
      season: json['season'],
    );
  }
}
