import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/gen/assets.gen.dart';

class AcceptanceFilterOverlay extends StatefulWidget {
  final bool actionType;

  const AcceptanceFilterOverlay({
    super.key,
    this.actionType = false,
  });

  @override
  State<AcceptanceFilterOverlay> createState() => _AcceptanceFilterOverlayState();
}

class _AcceptanceFilterOverlayState extends State<AcceptanceFilterOverlay> {
  late final MaskTextInputFormatter _maskFormatter = MaskTextInputFormatter(mask: '##-##-####');
  late final TextEditingController _startDateController = TextEditingController();
  late final TextEditingController _endDateController = TextEditingController();
  late final ValueNotifier<String?> _selectedItemNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDates(),
        const SizedBox(height: AppProps.kPageMargin),
        if (widget.actionType)
          ValueListenableBuilder(
            valueListenable: _selectedItemNotifier,
            builder: (BuildContext context, String? value, Widget? child) {
              return OverlayDropdown(
                items: const ['Выбрать', 'Контейнер', 'Склад'],
                selectedItem: value,
                onSelectItem: (selectedItem) {
                  _selectedItemNotifier.value = selectedItem;
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 60),
                  child: DropDownSelectedWidget(
                    title: 'Складское помещение',
                    desc: 'Выбрать',
                    selectedValue: value,
                  ),
                ),
              );
            },
          ),
        if (widget.actionType) const SizedBox(height: AppProps.kPageMargin),
        ValueListenableBuilder(
          valueListenable: _selectedItemNotifier,
          builder: (context, value, child) {
            return OverlayDropdown(
              items: const ['Выбрать', 'Контейнер', 'Склад'],
              selectedItem: value,
              onSelectItem: (selectedItem) {
                _selectedItemNotifier.value = selectedItem;
              },
              child: Container(
                margin: const EdgeInsets.only(right: 60),
                child: DropDownSelectedWidget(
                  title: 'Складское помещение',
                  desc: 'Выбрать',
                  selectedValue: value,
                ),
              ),
            );
          },
        ),
        const SizedBox(height: AppProps.kPageMargin),
        _button(),
      ],
    );
  }

  Widget _button() {
    return SizedBox(
      width: 113,
      child: AppButton(
        borderRadius: AppProps.kSmallBorderRadius,
        onTap: () {},
        text: 'Найти',
      ),
    );
  }

  Widget _buildDates() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Дата',
          style: AppTextStyle.secondaryStyle,
        ),
        const SizedBox(height: AppProps.kMediumMargin),
        Row(
          children: [
            SizedBox(
              width: 100,
              child: AppInput(
                height: 30,
                inputType: TextInputType.number,
                formatters: [_maskFormatter],
                hintText: '__-__-____',
                hintStyle: AppTextStyle.secondaryStyle,
                textStyle: AppTextStyle.secondaryStyle,
                controller: _startDateController,
                padding: const EdgeInsets.symmetric(
                  vertical: AppProps.kSmallMarginX2,
                  horizontal: AppProps.kMediumMargin,
                ),
                backgroundColor: AppColors.kWhite,
                boxDecoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                  border: Border.all(color: AppColors.kBorder),
                ),
              ),
            ),
            const SizedBox(width: AppProps.kMediumMargin),
            SizedBox(
              width: 100,
              child: AppInput(
                height: 30,
                inputType: TextInputType.number,
                formatters: [_maskFormatter],
                hintText: '__-__-____',
                hintStyle: AppTextStyle.secondaryStyle,
                textStyle: AppTextStyle.secondaryStyle,
                controller: _endDateController,
                padding: const EdgeInsets.symmetric(
                  vertical: AppProps.kSmallMarginX2,
                  horizontal: AppProps.kMediumMargin,
                ),
                backgroundColor: AppColors.kWhite,
                boxDecoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                  border: Border.all(color: AppColors.kBorder),
                ),
              ),
            ),
            const SizedBox(width: AppProps.kSmallMargin),
            Assets.icons.icCalendar.svg(),
          ],
        ),
      ],
    );
  }
}
