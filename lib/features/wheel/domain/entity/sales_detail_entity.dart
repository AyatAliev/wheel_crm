import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

part 'sales_detail_entity.g.dart';

@CopyWith()
class SalesDetailEntity {
  int? id;
  final StorageEntity storage;
  final DateTime createdAt;
  final List<WheelEntity> wheels;
  final String season;
  String? user;

  SalesDetailEntity({
    this.id,
    this.user,
    required this.storage,
    required this.createdAt,
    required this.wheels,
    required this.season,
  });

  Map<String, dynamic> toJson() => {
        "storage": storage.id,
        "created_at": createdAt.formatyyyyHyphenMMdd(),
        "season": season,
        "wheels": wheels.map((e) => e.toJson(enableSeason: false)).toList(),
      };
}
