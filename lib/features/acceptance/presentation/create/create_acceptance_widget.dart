import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_create_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_detail_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class CreateAcceptanceWidget extends StatefulWidget {
  const CreateAcceptanceWidget({super.key});

  @override
  State<CreateAcceptanceWidget> createState() => _CreateAcceptanceWidgetState();
}

class _CreateAcceptanceWidgetState extends State<CreateAcceptanceWidget> {
  late final MaskTextInputFormatter _maskFormatter;
  late final TextEditingController _dateController;
  late final ValueNotifier<String?> _selectedItemNotifier;
  late final ValueNotifier<bool> _visibleAllListNotifier;

  final List<String> _wheels = [];
  int _countWheel = 0;

  @override
  void initState() {
    super.initState();
    _maskFormatter = MaskTextInputFormatter(mask: '##-##-####');
    _dateController = TextEditingController();
    _selectedItemNotifier = ValueNotifier(null);
    _visibleAllListNotifier = ValueNotifier(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(AppProps.kPageMargin),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildDateSelection(),
              const SizedBox(height: AppProps.kPageMargin),
              const Divider(height: 1, color: AppColors.kDivider),
              const SizedBox(height: AppProps.kPageMargin),
              _buildRowSelectedDate(),
              const SizedBox(height: AppProps.kPageMargin),
              _buildWarehouseSelection(),
              const SizedBox(height: AppProps.kPageMargin),
              const Divider(height: 1, color: AppColors.kDivider),
              const SizedBox(height: AppProps.kPageMargin),
              _buildProductSelection(),
              const SizedBox(height: AppProps.kMediumMargin),
              _buildAddNewProduct(),
              const SizedBox(height: AppProps.kPageMargin),
              const Divider(height: 1, color: AppColors.kDivider),
              const SizedBox(height: AppProps.kPageMargin),
              _buildTotal(),
              const SizedBox(height: AppProps.kBigMargin),
              _buildSaveButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowSelectedDate() {
    return GestureDetector(
      onTap: _selectedDate,
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: AppInput.border(
              inputType: TextInputType.number,
              formatters: [_maskFormatter],
              hintText: '__-__-____',
              readOnly: true,
              controller: _dateController,
              onTap: _selectedDate,
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
    ).withOpaqueBehavior();
  }

  Widget _buildDateSelection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          t.acceptanceDate,
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey),
        ),
        GestureDetector(
          onTap: () => context.router.pop(),
          child: const Icon(Icons.close),
        ),
      ],
    );
  }

  Widget _buildWarehouseSelection() {
    return ValueListenableBuilder(
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
    );
  }

  Widget _buildProductSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.chooseProduct,
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey),
        ),
        const SizedBox(height: AppProps.kMediumMargin),
        GestureDetector(
          onTap: _onChangeDisplayList,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildProductOption(t.selectFromList),
              ValueListenableBuilder<bool>(
                valueListenable: _visibleAllListNotifier,
                builder: (context, value, child) {
                  return Text(
                    value ? 'Свернуть список' : '',
                    style: AppTextStyle.secondaryStyle.copyWith(color: AppColors.kRed),
                  );
                },
              ),
            ],
          ),
        ).withOpaqueBehavior(),
        ValueListenableBuilder<bool>(
          valueListenable: _visibleAllListNotifier,
          builder: (context, value, child) {
            return Visibility(
              visible: value,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 300),
                child: const WheelDetailWidget(),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildAddNewProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _wheels.add('');
            });
          },
          child: _buildProductOption(t.addNewProduct),
        ).withOpaqueBehavior(),
        const SizedBox(height: AppProps.kMediumMargin),
        WheelCreateWidget(
          wheels: _wheels,
          onCountController: (int count) {
            setState(() {
              _countWheel = count;
            });
          },
          onPressedDeleteItem: (String item) {
            setState(() {
              _wheels.remove(item);
            });
          },
        ),
      ],
    );
  }

  Widget _buildProductOption(String label) {
    return Text(
      label,
      style: AppTextStyle.secondaryStyle.copyWith(color: AppColors.kPrimary),
    );
  }

  Widget _buildTotal() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          t.total,
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey),
        ),
        Text(
          _countWheel.toString(),
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return AppButton(
      onTap: () {},
      text: t.save,
      borderRadius: AppProps.kSmallBorderRadius,
    );
  }

  Future<void> _selectedDate() async {
    final picked = await AppDatePicker.show(
      context,
      initialDate: _dateController.text.parceddMMyyyy() ?? DateTime.now(),
    );

    if (picked != null) {
      _dateController.text = picked.formatddMMyyyy();
    }
  }

  void _onChangeDisplayList() {
    if (_selectedItemNotifier.value != null) {
      _visibleAllListNotifier.value = !_visibleAllListNotifier.value;
    } else {
      AppSnackBar.show(
        context: context,
        titleText: 'Нужно выбрать помещение!',
        error: true,
      );
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    _selectedItemNotifier.dispose();
    _visibleAllListNotifier.dispose();
    super.dispose();
  }
}
