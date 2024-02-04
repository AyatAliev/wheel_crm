import 'package:copy_with_extension/copy_with_extension.dart';

part 'storage_entity.g.dart';

@CopyWith()
class StorageEntity {
  final int? id;
  final String? title;

  StorageEntity({this.id, this.title});

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}
