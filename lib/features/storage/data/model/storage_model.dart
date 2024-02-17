/// id : 2
/// title : "Склад"
/// owner : "test1"
/// parent : null

class StorageModel {
  final int id;
  final String title;
  final String owner;
  final dynamic parent;
  final int amount;

  StorageModel({
    required this.id,
    required this.title,
    required this.owner,
    required this.parent,
    required this.amount,
  });

  factory StorageModel.fromJson(Map<String, dynamic> json) {
    return StorageModel(
      id: json['id'],
      title: json['title'],
      owner: json['owner'],
      parent: json['parent'],
      amount: json['amount'],
    );
  }
}