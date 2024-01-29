import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/gen/assets.gen.dart';

class AcceptanceFilterOverlay extends StatefulWidget {
  const AcceptanceFilterOverlay({super.key});

  @override
  State<AcceptanceFilterOverlay> createState() => _AcceptanceFilterOverlayState();
}

class _AcceptanceFilterOverlayState extends State<AcceptanceFilterOverlay> {
  final MaskTextInputFormatter _maskFormatter = MaskTextInputFormatter(mask: '##-##-####');
  late final TextEditingController _startDateController = TextEditingController();
  late final TextEditingController _endDateController = TextEditingController();
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDates(),
        const SizedBox(height: AppProps.kPageMargin),
        OverlayDropdown(
          items: const ['Выбрать', 'Контейнер', 'Склад'],
          selectedItem: selectedItem,
          onSelectItem: (selectedItem) {
            setState(() {
              this.selectedItem = selectedItem;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(right: 60),
            child: DropDownSelectedWidget(
              title: 'Складское помещение',
              desc: 'Выбрать',
              selectedValue: selectedItem,
            ),
          ),
        )
      ],
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
