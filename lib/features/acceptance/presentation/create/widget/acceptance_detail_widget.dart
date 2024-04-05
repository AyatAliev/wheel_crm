import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

import '../../../../wheel/presentation/widgets/item_list_widget.dart';

class AcceptanceDetailWidget extends StatefulWidget {
  final void Function(WheelEntity item)? onSelectedItem;
  final void Function(WheelEntity item)? onDeletedItem;
  final void Function()? onClear;
  final void Function(String search)? onSearch;
  final WheelEntity? deletedItem;
  final AcceptanceEntity? acceptanceEntity;
  final StorageEntity? storage;
  final List<WheelEntity>? selectedItems;
  final bool editor;

  const AcceptanceDetailWidget({
    super.key,
    this.onDeletedItem,
    this.onSelectedItem,
    this.onSearch,
    this.onClear,
    this.deletedItem,
    this.storage,
    this.selectedItems,
    this.editor = false,
    this.acceptanceEntity,
  });

  @override
  State<AcceptanceDetailWidget> createState() => _AcceptanceDetailWidgetState();
}

class _AcceptanceDetailWidgetState extends State<AcceptanceDetailWidget> {
  late final MaskTextInputFormatter _maskFormatter;
  late final List<WheelEntity> _selectedWheels = [];
  late final TextEditingController _searchController = TextEditingController();

  @override
  void didUpdateWidget(covariant AcceptanceDetailWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.deletedItem != null) {
      _selectedWheels.remove(widget.deletedItem);
      widget.onClear?.call();
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.selectedItems != null) {
      _selectedWheels.addAll(widget.selectedItems!.toList());
    }

    _maskFormatter = MaskTextInputFormatter(mask: '###/## r##');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.storage != null) _titleAndClose(),
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

  Widget _buildSaveButton() {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: AppButton(
          onTap: _onSaveButton,
          text: t.save,
          borderRadius: AppProps.kSmallBorderRadius,
        ),
      ),
    );
  }

  Widget _titleAndClose() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.storage!.title!,
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
              borderRadius:
                  BorderRadius.circular(AppProps.kSmallX2BorderRadius),
              border: Border.all(color: AppColors.kBorder),
            ),
            onChanged: onChangeSearch,
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
                final isSelected =
                    _selectedWheels.any((e) => e.id == state.wheels[i].id);
                return ItemListWidget(
                  toggleSelection: _toggleSelection,
                  entity: state.wheels[i],
                  isSelected: isSelected,
                  selectedWheels: _selectedWheels,
                );
              },
              itemCount: state.wheels.length,
            ),
            if (widget.editor == false) _buildSaveButton(),
            if (state.wheels.isEmpty && state.stateStatus is SuccessStatus)
              const Center(
                child: Text(
                  'Данных нет',
                  style: AppTextStyle.bodyLargeStyle,
                ),
              ),
            if (state.stateStatus is LoadingStatus)
              const Center(
                  child: CircularProgressIndicator(color: AppColors.kPrimary)),
          ],
        );
      }),
    );
  }

  Widget _title() {
    return Row(
      children: [
        Expanded(
          child: Text(
            t.name,
            style:
                AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
          ),
        ),
        const SizedBox(width: AppProps.kMediumMargin),
        Expanded(
          child: Text(
            t.quantity,
            style:
                AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
          ),
        ),
      ],
    );
  }

  void _toggleSelection(WheelEntity wheel) {
    if (widget.editor == false) {
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
  }

  void _onSaveButton() {
    context.router.pop(_selectedWheels);
  }

  void onChangeSearch(String val) {
    context.read<AcceptanceBloc>().add(AcceptanceEvent.getAcceptanceById(
        acceptanceId: widget.acceptanceEntity!.id));
  }
}
