import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class WheelDetailWidget extends StatefulWidget {
  final void Function(WheelEntity item)? onSelectedItem;
  final void Function(WheelEntity item)? onDeletedItem;
  final void Function()? onClear;
  final void Function(String search)? onSearch;
  final WheelEntity? deletedItem;
  final String? title;

  const WheelDetailWidget({
    super.key,
    this.onDeletedItem,
    this.onSelectedItem,
    this.onSearch,
    this.onClear,
    this.deletedItem,
    this.title,
  });

  @override
  State<WheelDetailWidget> createState() => _WheelDetailWidgetState();
}

class _WheelDetailWidgetState extends State<WheelDetailWidget> {
  late final MaskTextInputFormatter _maskFormatter;
  late final List<WheelEntity> _selectedWheels = [];
  late final TextEditingController _searchController = TextEditingController();

  @override
  void didUpdateWidget(covariant WheelDetailWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.deletedItem != null) {
      _selectedWheels.remove(widget.deletedItem);
      widget.onClear?.call();
    }
  }

  @override
  void initState() {
    super.initState();
    _maskFormatter = MaskTextInputFormatter(mask: '###/## r##');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) _titleAndClose(),
        const SizedBox(height: AppProps.kPageMargin),
        _search(),
        const SizedBox(height: AppProps.kPageMargin),
        const Divider(height: 1, color: AppColors.kDivider),
        const SizedBox(height: AppProps.kPageMargin),
        _title(),
        const SizedBox(height: AppProps.kPageMargin),
        _list(),
        const SizedBox(height: AppProps.kMediumMargin),
      ],
    );
  }

  Widget _titleAndClose() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title!,
          style: AppTextStyle.bodyLargeStyle,
        ),
        GestureDetector(
          onTap: () => context.router.pop(),
          child: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _search() {
    return Row(
      children: [
        SizedBox(
          width: 160,
          child: AppInput.border(
            controller: _searchController,
            inputType: TextInputType.number,
            hintText: '___/__ r__',
            formatters: [_maskFormatter],
            boxDecoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
              border: Border.all(color: AppColors.kBorder),
            ),
            onChanged: widget.onSearch,
          ),
        ),
        const SizedBox(width: AppProps.kSmallMargin),
        Assets.icons.icSearch.svg(),
      ],
    );
  }

  Widget _list() {
    return Expanded(
      child: BlocBuilder<StorageBloc, StorageState>(builder: (context, state) {
        return Stack(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, i) {
                final isSelected = _selectedWheels.any((e) => e.id == state.wheels[i].id);
                return Container(
                  margin: const EdgeInsets.only(bottom: AppProps.kMediumMargin),
                  child: GestureDetector(
                    onTap: () => _toggleSelection(state.wheels[i].copyWith(amount: 0)),
                    child: Row(
                      children: [
                        Expanded(
                          child: AppInput.border(
                            height: 35,
                            controller: TextEditingController(text: state.wheels[i].title),
                            readOnly: true,
                            onTap: () => _toggleSelection(state.wheels[i].copyWith(amount: 0)),
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
                            controller: TextEditingController(text: state.wheels[i].amount.toString()),
                            readOnly: true,
                            onTap: () => _toggleSelection(state.wheels[i].copyWith(amount: 0)),
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
              },
              itemCount: state.wheels.length,
            ),
            if (state.wheels.isEmpty && state.stateStatus is SuccessStatus)
              const Center(
                child: Text(
                  'Данных нет',
                  style: AppTextStyle.bodyLargeStyle,
                ),
              ),
            if (state.stateStatus is LoadingStatus)
              const Center(child: CircularProgressIndicator(color: AppColors.kPrimary)),
          ],
        );
      }),
    );
  }

  void _toggleSelection(WheelEntity wheel) {
    setState(() {
      if (_selectedWheels.contains(wheel)) {
        _selectedWheels.remove(wheel);
        widget.onDeletedItem?.call(wheel);
      } else {
        _selectedWheels.add(wheel);
        widget.onSelectedItem?.call(wheel);
      }
    });
  }

  Widget _title() {
    return Row(
      children: [
        Expanded(
          child: Text(
            t.name,
            style: AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
          ),
        ),
        const SizedBox(width: AppProps.kMediumMargin),
        Expanded(
          child: Text(
            t.quantity,
            style: AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
          ),
        ),
      ],
    );
  }
}
