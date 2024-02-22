import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';

part 'sales_entity.g.dart';

@CopyWith()
class SalesEntity {
  final int? id;
  final DateTime? createdAt;
  final String? user;
  final StorageEntity? storage;
  final int? amount;

  SalesEntity({
    this.id,
    this.amount,
    this.createdAt,
    this.user,
    this.storage,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt,
        "user": user,
        "storage": storage?.toJson(),
        "amount": amount,
      };
}
