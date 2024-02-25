import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_detail_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/features/wheel/presentation/widgets/item_list_widget.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class SalesDetailWidget extends StatefulWidget {
  const SalesDetailWidget({super.key});

  @override
  State<SalesDetailWidget> createState() => _SalesDetailWidgetState();
}

class _SalesDetailWidgetState extends State<SalesDetailWidget> {
  late final MaskTextInputFormatter _maskFormatter;
  late final TextEditingController _dateController;
  late final ValueNotifier<String?> _selectedItemNotifier;
  late final ValueNotifier<bool> _visibleAllListNotifier;
  late final ValueNotifier<int> _countWheel = ValueNotifier(0);
  late final ValueNotifier<List<WheelEntity>> _notifierWheels = ValueNotifier([]);
  late final ValueNotifier<SalesDetailEntity?> _salesDetailEntity = ValueNotifier(null);

  StorageEntity? _storageSelected;

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
      body: BlocConsumer<WheelBloc, WheelState>(
        listener: _listenerWheelBloc,
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppProps.kPageMargin),
                child: SingleChildScrollView(
                  child: ValueListenableBuilder(
                    valueListenable: _salesDetailEntity,
                    builder: (context, value, _) {
                      return Column(
                        children: [
                          _buildDateSelection(),
                          IgnorePointer(
                            ignoring: value != null ? true : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                                const SizedBox(height: AppProps.kPageMargin),
                                const Divider(height: 1, color: AppColors.kDivider),
                                const SizedBox(height: AppProps.kPageMargin),
                                _buildTotal(),
                                if (value == null) const SizedBox(height: AppProps.kBigMargin),
                                if (value == null) _buildSaveButton(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              if (state.stateStatus is LoadingStatus)
                const Center(child: CircularProgressIndicator(color: AppColors.kPrimary)),
            ],
          );
        },
      ),
    );
  }

  void _listenerWheelBloc(BuildContext context, WheelState state) {
    state.stateStatus.whenOrNull(
      success: (val) {
        if (state.wheelDetail != null && val == WheelBlocSuccess.details) {
          _salesDetailEntity.value = state.wheelDetail;
          _dateController.text = state.wheelDetail!.createdAt.formatddMMyyyy();
          _selectedItemNotifier.value = state.wheelDetail!.storage.title;
          _storageSelected = state.wheelDetail!.storage;
          _notifierWheels.value = state.wheelDetail!.wheels;
          _countWheel.value =
              state.wheelDetail!.wheels.fold(0, (previousValue, element) => previousValue + (element.amount ?? 0));
          _visibleAllListNotifier.value = true;

          if (_storageSelected != null && _storageSelected?.id != null) {
            context.read<StorageBloc>().add(StorageEvent.getStoragesById(storageId: _storageSelected!.id!));
          }
        }
      },
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
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
          t.salesDate,
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
    return BlocBuilder<StorageBloc, StorageState>(builder: (context, state) {
      return ValueListenableBuilder(
        valueListenable: _selectedItemNotifier,
        builder: (context, value, child) {
          return OverlayDropdown(
            items: [t.choose, ...state.storages.map((e) => e.title ?? '')],
            selectedItem: value,
            onSelectItem: (val) => _onSelectedItemDropDown(state.storages, val),
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
    });
  }

  Widget _buildProductSelection() {
    return BlocBuilder<StorageBloc, StorageState>(builder: (context, state) {
      return ValueListenableBuilder(
        valueListenable: _notifierWheels,
        builder: (context, wheels, _) {
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
                child: _buildProductOption(t.selectFromList),
              ).withOpaqueBehavior(),
              Column(children: _buildOnlySelectedWidgets(wheels)),
            ],
          );
        },
      );
    });
  }

  List<Widget> _buildOnlySelectedWidgets(List<WheelEntity> list) {
    return [
      const SizedBox(height: AppProps.kPageMargin),
      ...list.map(
        (element) => ItemListWidget(
          onChange: onChangeCountField,
          entity: element,
          isSelected: true,
          selectedWheels: list,
          readOnly: false,
        ),
      ),
    ];
  }

  void onChangeCountField(String text) {
    int count = 0;

    for (var element in _notifierWheels.value) {
      if (element.countController.text.isNotEmpty) {
        count += int.parse(element.countController.text);
      }
    }

    _countWheel.value = count;
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
        ValueListenableBuilder(
          valueListenable: _countWheel,
          builder: (context, value, _) {
            return Text(
              value.toString(),
              style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
            );
          },
        ),
      ],
    );
  }

  Widget _buildSaveButton() {
    return AppButton(
      onTap: _onSaveButton,
      text: t.save,
      borderRadius: AppProps.kSmallBorderRadius,
    );
  }

  void _onSaveButton() {
    if (_dateController.text.isNotEmpty) {
      if (_storageSelected != null) {
        context.read<WheelBloc>().add(
          WheelEvent.addWheel(
            salesDetailEntity: SalesDetailEntity(
              storage: _storageSelected!,
              createdAt: _dateController.text.parceddMMyyyy()!,
              wheels: _notifierWheels.value,
            ),
          ),
        );
      } else {
        AppSnackBar.show(
          context: context,
          titleText: t.youNeedChooseRoom,
          error: true,
        );
      }
    } else {
      AppSnackBar.show(
        context: context,
        titleText: t.selectDateSales,
        error: true,
      );
    }
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

  Future<void> _onChangeDisplayList() async {
    if (_salesDetailEntity.value != null && _selectedItemNotifier.value != null) {
      _visibleAllListNotifier.value = !_visibleAllListNotifier.value;
    } else if (_salesDetailEntity.value == null && _selectedItemNotifier.value != null) {
      final result = await AppBottomSheet.show<List<WheelEntity>>(
        context: context,
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(value: BlocProvider.of<StorageBloc>(context)),
          ],
          child: Padding(
            padding: const EdgeInsets.all(AppProps.kPageMargin),
            child: WheelDetailWidget(
              storage: _storageSelected,
              selectedItems: _notifierWheels.value,
            ),
          ),
        ),
      );

      if (result != null && result.isNotEmpty) {
        _notifierWheels.value = result;
      }
    } else {
      AppSnackBar.show(
        context: context,
        titleText: t.youNeedChooseRoom,
        error: true,
      );
    }
  }

  void _onSelectedItemDropDown(List<StorageEntity> storages, String? selectedItem) {
    _selectedItemNotifier.value = selectedItem;
    _storageSelected = storages.firstWhereOrNull((e) => e.title == selectedItem);

    if (_storageSelected != null && _storageSelected?.id != null) {
      context.read<StorageBloc>().add(StorageEvent.getStoragesById(storageId: _storageSelected!.id!));
    }
  }

  @override
  void dispose() {
    _maskFormatter.clear();
    _dateController.dispose();
    _selectedItemNotifier.dispose();
    _visibleAllListNotifier.dispose();
    _salesDetailEntity.dispose();
    super.dispose();
  }
}
