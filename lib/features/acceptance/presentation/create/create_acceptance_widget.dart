import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/core/const/season_enum.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/create_acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_create_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_detail_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/other/season_selection.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
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
  late final ValueNotifier<List<WheelEntity>> _notifierWheels = ValueNotifier([]);

  int _countWheel = 0;
  StorageEntity? _storageSelected;
  WheelEntity? deletedItem;
  String _season = Season.summer.title;

  @override
  void initState() {
    super.initState();
    _maskFormatter = MaskTextInputFormatter(mask: '##-##-####');
    _dateController = TextEditingController();
    _selectedItemNotifier = ValueNotifier(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<StorageBloc, StorageState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(AppProps.kPageMargin),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDateSelection(),
                const SizedBox(height: AppProps.kPageMargin),
                const Divider(height: 1, color: AppColors.kDivider),
                const SizedBox(height: AppProps.kPageMargin),
                _buildRowSelectedDate(),
                const SizedBox(height: AppProps.kPageMargin),
                _buildWarehouseSelection(state.storages),
                const SizedBox(height: AppProps.kPageMargin),
                const Divider(height: 1, color: AppColors.kDivider),
                const SizedBox(height: AppProps.kPageMargin),
                _buildProductSelection(state.wheels),
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
        );
      }),
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

  Widget _buildWarehouseSelection(List<StorageEntity> storages) {
    return ValueListenableBuilder(
      valueListenable: _selectedItemNotifier,
      builder: (context, value, child) {
        return OverlayDropdown(
          items: [t.choose, ...storages.map((e) => e.title ?? '')],
          selectedItem: value,
          onSelectItem: (val) => _onSelectedItemDropDown(storages, val),
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

  Widget _buildProductSelection(List<WheelEntity> wheels) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.chooseProduct,
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey),
        ),
        const SizedBox(height: AppProps.kMediumMargin),
        SeasonSelection(
          selected: _season,
          onTap: (String text) {
            _season = text;
            context.read<StorageBloc>().add(StorageEvent.getStoragesById(storageId: _storageSelected!.id!, season: _season));
          },
        ),
        GestureDetector(
          onTap: _onChangeDisplayList,
          child: _buildProductOption(t.selectFromList),
        ).withOpaqueBehavior(),
      ],
    );
  }

  Widget _buildAddNewProduct() {
    return ValueListenableBuilder(
      valueListenable: _notifierWheels,
      builder: (BuildContext context, List<WheelEntity> wheels, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  final newWheels = wheels..add(WheelEntity.empty());
                  _notifierWheels.value = newWheels;
                });
              },
              child: _buildProductOption(t.addNewProduct),
            ).withOpaqueBehavior(),
            const SizedBox(height: AppProps.kPageMargin),
            WheelCreateWidget(
              wheels: wheels,
              onCountController: (int count) {
                setState(() {
                  _countWheel = count;
                });
              },
              onPressedDeleteItem: (WheelEntity item) {
                setState(() {
                  wheels.remove(item);
                  deletedItem = item;
                });
              },
              onUpdateAllWheels: (List<WheelEntity> wheels) {
                _notifierWheels.value.clear();
                _notifierWheels.value.addAll(wheels);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildProductOption(String label) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: AppProps.kPageMargin),
        child: Text(
          label,
          style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
        ),
      ),
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
    return BlocConsumer<AcceptanceBloc, AcceptanceState>(
      listener: (context, state) {
        if (state.stateStatus is SuccessStatus) {
          context.router.pop(true);
        }
      },
      builder: (context, state) {
        return AppButton(
          isLoading: state.stateStatus is LoadingStatus,
          onTap: _onSaveButton,
          text: t.save,
          borderRadius: AppProps.kSmallBorderRadius,
        );
      },
    );
  }

  void _onSaveButton() {
    if (_dateController.text.isEmpty) {
      AppSnackBar.show(
        context: context,
        titleText: t.selectDateSales,
        error: true,
      );
    } else if (_storageSelected == null) {
      AppSnackBar.show(
        context: context,
        titleText: t.youNeedChooseRoom,
        error: true,
      );
    } else if (_notifierWheels.value.isEmpty) {
      AppSnackBar.show(
        context: context,
        titleText: t.fillAcceptanceProduct,
        error: true,
      );
    } else {
      final storageWheels = context.read<StorageBloc>().state.wheels;
      final existingWheels = _notifierWheels.value.where((e) => storageWheels.any((w) => w.title == e.title)).toList();
      final newWheels = _notifierWheels.value.where((e) => !existingWheels.any((w) => w.title == e.title)).toList();

      context.read<AcceptanceBloc>().add(
            AcceptanceEvent.addAcceptance(
              createAcceptanceEntity: CreateAcceptanceEntity(
                season: _season,
                createAt: _dateController.text.parceddMMyyyy()!,
                storage: _storageSelected!.id!,
                wheels: existingWheels,
                newWheels: newWheels,
              ),
            ),
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
    if (_selectedItemNotifier.value != null) {
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
              viewing: false,
              season: _season,
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
    _storageSelected = storages.firstWhere((e) => e.title == selectedItem);

    if (_storageSelected != null && _storageSelected?.id != null) {
      context.read<StorageBloc>().add(StorageEvent.getStoragesById(storageId: _storageSelected!.id!, season: _season));
    }
  }

  @override
  void dispose() {
    _maskFormatter.clear();
    _dateController.dispose();
    _selectedItemNotifier.dispose();
    super.dispose();
  }
}
