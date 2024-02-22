import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:wheel_crm/features/storage/data/model/storage_model.dart';

part 'sales_model.g.dart';

@CopyWith()
class SalesModel {
  final int? id;
  final String? createdAt;
  final String? user;
  final StorageModel? storage;
  final int? amount;

  SalesModel({
    this.id,
    this.amount,
    this.createdAt,
    this.user,
    this.storage,
  });

  factory SalesModel.fromJson(Map<String, dynamic> json) {
    return SalesModel(
      id: json['id'],
      createdAt: json['created_at'],
      user: json['user'],
      storage: StorageModel.fromJson(json['storage']),
      amount: json['amount'],
    );
  }
}