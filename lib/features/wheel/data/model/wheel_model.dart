/// title : "whee11"
/// amount : 40

class WheelModel {
  final int id;
  final String title;
  final int? amount;
  final String? season;

  WheelModel({
    required this.id,
    required this.title,
    required this.season,
    this.amount,
  });

  factory WheelModel.fromJson(Map<String, dynamic> json) {
    return WheelModel(
      title: json['title'],
      amount: json['amount'],
      id: json['id'],
      season: json['season'],
    );
  }
}