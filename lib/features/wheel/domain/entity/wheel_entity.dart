import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';

part 'wheel_entity.g.dart';

@CopyWith()
class WheelEntity {
  static int _idCounter = 0;

  int? id;
  TextEditingController nameController;
  TextEditingController countController;
  bool isRead;

  WheelEntity({
    required this.id,
    required int? amount,
    required String? title,
  })  : nameController = TextEditingController(text: title),
        isRead = true,
        countController = TextEditingController(text: amount == 0 ? null : amount.toString());

  WheelEntity.empty()
      : id = ++_idCounter,
        isRead = false,
        nameController = TextEditingController(),
        countController = TextEditingController();

  String? get title => nameController.text;

  int? get amount => int.tryParse(countController.text);

  Map<String, dynamic> toJson() => {"amount": amount, "title": title};

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WheelEntity &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          amount == other.amount &&
          title == other.title;

  @override
  int get hashCode => id.hashCode ^ amount.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'WheelEntity{id: $id, amount: $amount, title: $title, nameController: ${nameController.text}, countController: ${countController.text}';
  }
}
