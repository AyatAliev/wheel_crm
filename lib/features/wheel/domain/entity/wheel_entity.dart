import 'package:copy_with_extension/copy_with_extension.dart';

part 'wheel_entity.g.dart';

@CopyWith()
class WheelEntity {
  int amount;
  String title;

  WheelEntity({
    required this.amount,
    required this.title,
  });

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "title": title,
      };
}
