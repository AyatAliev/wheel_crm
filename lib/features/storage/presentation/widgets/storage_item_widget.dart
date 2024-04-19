import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_detail_widget.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

class StorageItemWidget extends StatelessWidget {
  final StorageEntity storage;

  const StorageItemWidget(this.storage, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapItem(context),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppProps.kPageMargin,
          horizontal: AppProps.kPageMargin,
        ),
        margin: const EdgeInsets.all(AppProps.kSmallMargin),
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
              '${t.roomType}:',
              style: AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
            ),
            const SizedBox(height: AppProps.kMediumMargin),
            if (storage.title != null)
              Text(
                storage.title!,
                style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey),
              ),
            const SizedBox(height: AppProps.kMediumMargin),
            const Divider(height: 1, color: AppColors.kDivider),
            const SizedBox(height: AppProps.kMediumMargin),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${t.quantity}:',
                  style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
                ),
                Text(
                  (storage.amount ?? 0).toString(),
                  style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
                )
              ],
            ),
          ],
        ),
      ),
    ).withOpaqueBehavior();
  }

  Future<void> onTapItem(BuildContext context) async {
    AppBottomSheet.show(
      context: context,
      child: BlocProvider(
        create: (_) => getIt<StorageBloc>()
          ..add(
            StorageEvent.getStoragesById(storageId: storage.id!, season: ''),
          ),
        child: Padding(
          padding: const EdgeInsets.all(AppProps.kPageMargin),
          child: WheelDetailWidget(
            storage: storage,
            viewing: true,
            season: '',
          ),
        ),
      ),
    );
  }
}
