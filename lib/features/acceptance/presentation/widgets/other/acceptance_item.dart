import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';

class AcceptanceItem extends StatelessWidget {
  final DateTime createDate;
  final String whoAdded;
  final String storage;
  final int count;
  final bool isLastItem;

  const AcceptanceItem({
    super.key,
    required this.createDate,
    required this.whoAdded,
    required this.storage,
    required this.count,
    required this.isLastItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('dfgdfg');
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(
            left: AppProps.kPageMargin,
            right: AppProps.kPageMargin,
            top: AppProps.kPageMargin,
            bottom: isLastItem ? AppProps.kPageMargin : 0),
        padding: const EdgeInsets.symmetric(
          vertical: AppProps.kSmallMargin,
          horizontal: AppProps.kPageMargin,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.15),
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              createDate.formatddMMyyyy(),
              style: AppTextStyle.bodyLargeStyle
                  .copyWith(color: AppColors.kDarkGrey),
            ),
            const SizedBox(height: AppProps.kSmallMargin),
            const Divider(
              height: 1,
              color: AppColors.kDivider,
            ),
            const SizedBox(height: AppProps.kSmallMargin),
            _buildItemRow('Кем создано:', whoAdded,
                fontWeight: FontWeight.w400, fontSize: 12),
            const SizedBox(height: AppProps.kSmallMargin),
            _buildItemRow('Складное помещение:', storage,
                fontWeight: FontWeight.w500, fontSize: 16),
            const SizedBox(height: AppProps.kSmallMargin),
            _buildItemRow('Кол-во:', count.toString(),
                primary: true, fontWeight: FontWeight.w600, fontSize: 16),
            const SizedBox(height: AppProps.kSmallMargin),
          ],
        ),
      ),
    );
  }

  Widget _buildItemRow(
    String title,
    String value, {
    bool primary = false,
    required FontWeight fontWeight,
    required double fontSize,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.mediumStyle.copyWith(
            fontSize: fontSize,
            color: primary ? AppColors.kPrimary : AppColors.kDarkGrey,
            fontWeight: fontWeight,
          ),
        ),
        Text(
          value,
          style: AppTextStyle.mediumStyle.copyWith(
            fontSize: fontSize,
            color: primary ? AppColors.kPrimary : AppColors.kDarkGrey,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
