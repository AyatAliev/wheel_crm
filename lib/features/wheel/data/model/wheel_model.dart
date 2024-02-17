/// title : "whee11"
/// amount : 40

class WheelModel {
  final int id;
  final String title;
  final int? amount;

  WheelModel({
    required this.id,
    required this.title,
    this.amount,
  });

  factory WheelModel.fromJson(Map<String, dynamic> json) {
    return WheelModel(
      title: json['title'],
      amount: json['amount'],
      id: json['id'],
    );
  }
}