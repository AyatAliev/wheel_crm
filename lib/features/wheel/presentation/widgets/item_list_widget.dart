import 'package:flutter/cupertino.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

class ItemListWidget extends StatelessWidget {
  final WheelEntity entity;
  final Function(WheelEntity entity)? toggleSelection;
  final bool isSelected;
  final List<WheelEntity> selectedWheels;
  final bool readOnly;
  final Function(String val)? onChange;

  const ItemListWidget({
    super.key,
    this.toggleSelection,
    required this.entity,
    required this.isSelected,
    required this.selectedWheels,
    this.onChange,
    this.readOnly = true,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: AppProps.kMediumMargin),
      child: GestureDetector(
        onTap: () => toggleSelection?.call(entity.copyWith(amount: 0)),
        child: Row(
          children: [
            Expanded(
              child: AppInput.border(
                height: 35,
                controller: isSelected ? selectedWheels.firstWhere((e) => e.id == entity.id).nameController :  entity.nameController,
                readOnly: true,
                onTap: () => toggleSelection?.call(entity.copyWith(amount: 0)),
                textStyle: AppTextStyle.bodyLargeStyle.copyWith(
                  color: isSelected ? AppColors.kBlack : AppColors.kDarkGrey,
                  fontWeight: FontWeight.w400,
                ),
                boxDecoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                  border: Border.all(color: isSelected ? AppColors.kPrimary : AppColors.kBorder),
                ),
              ),
            ),
            const SizedBox(width: AppProps.kMediumMargin),
            Expanded(
              child: AppInput.border(
                height: 35,
                inputType: TextInputType.number,
                controller: entity.countController,
                hintText: '0',
                readOnly: readOnly,
                onChanged: onChange,
                onTap: () => toggleSelection?.call(entity.copyWith(amount: 0)),
                textStyle: AppTextStyle.bodyLargeStyle.copyWith(
                  color: isSelected == true ? AppColors.kBlack : AppColors.kDarkGrey,
                  fontWeight: FontWeight.w400,
                ),
                boxDecoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                  border: Border.all(color: isSelected == true ? AppColors.kPrimary : AppColors.kBorder),
                ),
              ),
            )
          ],
        ),
      ).withOpaqueBehavior(),
    );
  }
}
