import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/other/acceptance_list.dart';
import 'package:wheel_crm/gen/strings.g.dart';

List<AcceptanceEntity> acceptances = [
  AcceptanceEntity(
    count: 459,
    createDate: DateTime(2024, 7, 21),
    whoAdded: 'Расул',
    storage: 'Контейнер',
  ),
];

class AcceptanceWidget extends StatelessWidget {
  const AcceptanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: acceptances.isEmpty ? _AcceptanceEmpty() : const AcceptanceList(),
    );
  }
}

class _AcceptanceEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 36),
        Text(
          t.youHaveNotAcceptance,
          style: AppTextStyle.titleStyle.copyWith(color: AppColors.kGreyDark),
        ),
        const SizedBox(height: AppProps.kSmallMargin),
        Text(
          t.addedAcceptance,
          style: AppTextStyle.secondaryStyle.copyWith(color: AppColors.kGreyDark),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
