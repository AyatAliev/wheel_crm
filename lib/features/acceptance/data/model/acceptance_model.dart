import 'package:wheel_crm/features/storage/data/model/storage_model.dart';
import 'package:wheel_crm/features/wheel/data/model/wheel_model.dart';

/// id : 1
/// wheels : [{"title":"whee11","amount":40},{"title":"wheel2","amount":303},{"title":"whee13","amount":20}]
/// created_at : "2024-02-03"
/// user : "a@a.com"
/// storage : {"id":2,"title":"Склад","owner":"test1","parent":null}
/// amount : 363

class AcceptanceModel {
  final int id;
  final List<WheelModel>? wheels;
  final String createdAt;
  final String user;
  final StorageModel storage;
  final int amount;

  AcceptanceModel({
    required this.id,
    required this.wheels,
    required this.createdAt,
    required this.user,
    required this.storage,
    required this.amount,
  });

  factory AcceptanceModel.fromJson(Map<String, dynamic> json) {
    return AcceptanceModel(
      id: json['id'],
      wheels: List<WheelModel>.from((json['wheels'] ?? []).map((x) => WheelModel.fromJson(x))),
      createdAt: json['created_at'],
      user: json['user'],
      storage: StorageModel.fromJson(json['storage']),
      amount: json['amount'],
    );
  }
}
