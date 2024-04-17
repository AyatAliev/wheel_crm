import 'package:collection/collection.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

part 'create_acceptance_entity.g.dart';

@CopyWith()
class CreateAcceptanceEntity {
  final DateTime createAt;
  final int storage;
  final String season;
  final List<WheelEntity> wheels;
  final List<WheelEntity> newWheels;

  CreateAcceptanceEntity({
    required this.createAt,
    required this.storage,
    required this.wheels,
    required this.newWheels,
    required this.season,
  });

  Map<String, dynamic> toJson() => {
        "created_at": createAt.formatyyyyHyphenMMdd(),
        "storage": storage,
        "season": season,
        "wheels": wheels.map((e) => e.toJson()).toList(),
        "new_wheels": newWheels.map((e) => e.toJson()).toList(),
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateAcceptanceEntity &&
          runtimeType == other.runtimeType &&
          createAt == other.createAt &&
          season == other.season &&
          storage == other.storage &&
          const ListEquality<WheelEntity>().equals(wheels, other.wheels) &&
          const ListEquality<WheelEntity>().equals(newWheels, other.newWheels);

  @override
  int get hashCode =>
      createAt.hashCode ^
      storage.hashCode ^
      season.hashCode ^
      const ListEquality<WheelEntity>().hash(wheels) ^
      const ListEquality<WheelEntity>().hash(newWheels);

  @override
  String toString() {
    return 'CreateAcceptanceEntity{createAt: $createAt, storage: $storage, season: $season, wheels: $wheels, newWheels: $newWheels}';
  }
}
