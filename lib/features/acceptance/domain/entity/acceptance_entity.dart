import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

part 'acceptance_entity.g.dart';

@CopyWith()
class AcceptanceEntity {
  final int? id;
  final DateTime createAt;
  final String? whoAdded;
  final int amount;
  final StorageEntity storage;
  final List<WheelEntity> wheels;
  final String season;

  AcceptanceEntity({
    this.id,
    this.whoAdded,
    required this.wheels,
    required this.createAt,
    required this.storage,
    required this.amount,
    required this.season,
  });

  Map<String, dynamic> toJson() => {
        "create_at": createAt,
        "user": whoAdded,
      };
}
