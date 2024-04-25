import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/core/const/action_type.dart';
import 'package:wheel_crm/core/const/season_enum.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/widget/wheel_detail_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/dropdown_selected_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/dropdown/overlay_dropdown.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/other/season_selection.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/features/wheel/presentation/widgets/item_list_widget.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class SalesDetailWidget extends StatefulWidget {
  const SalesDetailWidget({super.key});

  @override
  State<SalesDetailWidget> createState() => _SalesDetailWidgetState();
}

class _SalesDetailWidgetState extends State<SalesDetailWidget> {
  late final MaskTextInputFormatter _maskFormatter;
  late final ValueNotifier<String?> _selectedItemNotifier;
  late final ValueNotifier<ActionType?> _selectedActionTypeNotifier;
  late final ValueNotifier<bool> _visibleAllListNotifier;
  late final ValueNotifier<int> _countWheel = ValueNotifier(0);
  late final ValueNotifier<List<WheelEntity>> _notifierWheels = ValueNotifier([]);
  late final ValueNotifier<SalesDetailEntity?> _salesDetailEntity = ValueNotifier(null);

  StorageEntity? _storageSelected;
  String _season = Season.summer.title;

  @override
  void initState() {
    super.initState();
    _maskFormatter = MaskTextInputFormatter(mask: '##-##-####');
    _selectedActionTypeNotifier = ValueNotifier(null);
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
                          _buildClose(),
                          IgnorePointer(
                            ignoring: value != null ? true : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildActionType(),
                                const SizedBox(height: AppProps.kPageMargin),
                                _buildWarehouseSelection(),
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

  Widget _buildClose() {
    return GestureDetector(
      onTap: () => context.router.pop(),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: AppProps.kSmallMargin),
        child: Align(
          alignment: Alignment.centerRight,
          child: Icon(Icons.close),
        ),
      ),
    ).withOpaqueBehavior();
  }

  Widget _buildActionType() {
    final list = [t.seller, t.returned, t.defect];
    return ValueListenableBuilder(
      valueListenable: _selectedActionTypeNotifier,
      builder: (context, value, child) {
        return OverlayDropdown(
          items: [t.choose, ...list],
          selectedItem: value?.title,
          onSelectItem: (val) => _onSelectedActionTypeItemDropDown(val),
          child: Container(
            margin: const EdgeInsets.only(right: 60),
            child: DropDownSelectedWidget(
              title: t.typeAction,
              desc: t.choose,
              selectedValue: value?.title,
            ),
          ),
        );
      },
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
              ValueListenableBuilder(
                valueListenable: _selectedItemNotifier,
                builder: (context, value, _) {
                  if (_storageSelected != null) {
                    return SeasonSelection(
                      selected: _season,
                      onTap: (String text) {
                        _season = text;
                        context.read<StorageBloc>().add(
                              StorageEvent.getStoragesById(storageId: _storageSelected!.id!, season: _season),
                            );
                      },
                    );
                  }

                  return const SizedBox();
                },
              ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppProps.kPageMargin),
      child: Text(
        label,
        style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kPrimary),
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
      if (_storageSelected != null) {
      switch (_selectedActionTypeNotifier.value) {
        case ActionType.sales:
          {
            context.read<WheelBloc>().add(
                  WheelEvent.addWheel(
                    salesDetailEntity: SalesDetailEntity(
                      storage: _storageSelected!,
                      createdAt: DateTime.now(),
                      wheels: _notifierWheels.value,
                    ),
                  ),
                );
          }
          break;
        case ActionType.returned:
          {
            context.read<WheelBloc>().add(
                  WheelEvent.actionReturn(
                    salesDetailEntity: SalesDetailEntity(
                      storage: _storageSelected!,
                      createdAt: DateTime.now(),
                      wheels: _notifierWheels.value,
                    ),
                  ),
                );
          }
          break;
        case ActionType.defect:
          {
            context.read<WheelBloc>().add(
                  WheelEvent.actionDefect(
                    salesDetailEntity: SalesDetailEntity(
                      storage: _storageSelected!,
                      createdAt: DateTime.now(),
                      wheels: _notifierWheels.value,
                    ),
                  ),
                );
          }
          break;
        case null:
      }
    } else {
      AppSnackBar.show(
        context: context,
        titleText: t.youNeedChooseRoom,
          error: true,
        );
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

  void _onSelectedActionTypeItemDropDown(String? selectedItem) {
    if (ActionType.sales.title == selectedItem) {
      _selectedActionTypeNotifier.value = ActionType.sales;
    } else if (ActionType.returned.title == selectedItem) {
      _selectedActionTypeNotifier.value = ActionType.returned;
    } else if (ActionType.defect.title == selectedItem) {
      _selectedActionTypeNotifier.value = ActionType.defect;
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
    _selectedItemNotifier.dispose();
    _visibleAllListNotifier.dispose();
    _selectedActionTypeNotifier.dispose();
    _salesDetailEntity.dispose();
    _countWheel.dispose();
    _notifierWheels.dispose();
    _salesDetailEntity.dispose();
    super.dispose();
  }
}
