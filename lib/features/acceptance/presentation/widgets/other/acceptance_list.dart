import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/filter/acceptance_filter.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/other/acceptance_item.dart';

class AcceptanceList extends StatelessWidget {
  final List<AcceptanceEntity> acceptances;

  const AcceptanceList({super.key, required this.acceptances});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return AcceptanceItem(
          createDate: acceptances[index].createAt,
          whoAdded: acceptances[index].whoAdded ?? '',
          storage: acceptances[index].storage.title ?? '',
          count: acceptances[index].amount,
          isLastItem: (acceptances.length - 1) == index,
        );
      },
      itemCount: acceptances.length,
    );
  }
}
