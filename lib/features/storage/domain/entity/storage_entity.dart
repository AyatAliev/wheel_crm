import 'package:copy_with_extension/copy_with_extension.dart';

part 'storage_entity.g.dart';

@CopyWith()
class StorageEntity {
  final int? id;
  final String? title;
  final int? amount;

  StorageEntity({
    this.id,
    this.title,
    this.amount,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "amount": amount,
      };
}
