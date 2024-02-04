import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

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
        ValueListenableBuilder(
          valueListenable: _selectedItemNotifier,
          builder: (context, value, child) {
            return OverlayDropdown(
              items: [t.choose, 'Контейнер', 'Склад'],
              selectedItem: value,
              onSelectItem: (selectedItem) {
                _selectedItemNotifier.value = selectedItem;
              },
              child: Container(
                margin: const EdgeInsets.only(right: 60),
                child: DropDownSelectedWidget(
                  title: t.warehouseSpace,
                  desc: t.choose,
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
        text: t.search,
      ),
    );
  }

  Widget _buildDates() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.data,
          style: AppTextStyle.bodyLargeStyle,
        ),
        const SizedBox(height: AppProps.kMediumMargin),
        Row(
          children: [
            SizedBox(
              width: 120,
              child: AppInput.border(
                inputType: TextInputType.number,
                formatters: [_maskFormatter],
                hintText: '__-__-____',
                controller: _startDateController,
                boxDecoration: BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                  border: Border.all(color: AppColors.kBorder),
                ),
              ),
            ),
            const SizedBox(width: AppProps.kMediumMargin),
            SizedBox(
              width: 120,
              child: AppInput.border(
                inputType: TextInputType.number,
                inputAction: TextInputAction.done,
                formatters: [_maskFormatter],
                hintText: '__-__-____',
                controller: _endDateController,
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
