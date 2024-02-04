import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';

class DropDownSelectedWidget extends StatelessWidget {
  final String title;
  final String desc;
  final String? selectedValue;

  const DropDownSelectedWidget({
    super.key,
    required this.title,
    required this.desc,
    this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey),
        ),
        const SizedBox(height: AppProps.kSmallMargin),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: AppProps.kSmallMarginX2,
            horizontal: AppProps.kMediumMargin,
          ),
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
            border: Border.all(color: AppColors.kBorder),
          ),
          child: selectedValue != null && selectedValue != desc
              ? Text(
            selectedValue!,
            style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
          )
              : Text(
            desc,
            style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey.withOpacity(0.7)),
          ),
        ),
      ],
    );
  }
}