/// title : "whee11"
/// amount : 40

class WheelModel {
  final String title;
  final int? amount;

  WheelModel({
    required this.title,
    this.amount,
  });

  factory WheelModel.fromJson(Map<String, dynamic> json) {
    return WheelModel(
      title: json['title'],
      amount: json['amount'],
    );
  }
}