import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

part 'sales_detail_entity.g.dart';

@CopyWith()
class SalesDetailEntity {
  final int id;
  final StorageEntity storage;
  final DateTime createdAt;
  final List<WheelEntity> wheels;
  final String user;

  SalesDetailEntity({
    required this.id,
    required this.storage,
    required this.createdAt,
    required this.wheels,
    required this.user,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "storage": storage.toJson(),
        "created_at": createdAt,
        "user": user,
        "wheels": wheels.map((e) => e.toJson()).toList(),
      };
}
