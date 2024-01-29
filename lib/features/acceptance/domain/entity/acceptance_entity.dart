import 'package:copy_with_extension/copy_with_extension.dart';

part 'acceptance_entity.g.dart';

@CopyWith()
class AcceptanceEntity {
  int count;
  DateTime createDate;
  String whoAdded;
  String storage;

  AcceptanceEntity({
    required this.count,
    required this.createDate,
    required this.whoAdded,
    required this.storage,
  });

  Map<String, dynamic> toJson() => {
        "count": count,
        "create_date": createDate,
        "who_added": whoAdded,
        "storage": storage,
      };
}
