import 'package:flutter/material.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/storage/presentation/widgets/storage_item_widget.dart';

class StoragesListWidget extends StatelessWidget {
  final List<StorageEntity> storages;

  const StoragesListWidget({super.key, required this.storages});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) {
        return StorageItemWidget(storages[index]);
      },
      itemCount: storages.length,
    );
  }
}