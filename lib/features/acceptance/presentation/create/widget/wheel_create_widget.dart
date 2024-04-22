import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class WheelCreateWidget extends StatefulWidget {
  final List<WheelEntity> wheels;
  final Function(int count) onCountController;
  final Function(WheelEntity item) onPressedDeleteItem;
  final Function(List<WheelEntity> wheels) onUpdateAllWheels;

  const WheelCreateWidget({
    super.key,
    required this.wheels,
    required this.onCountController,
    required this.onPressedDeleteItem,
    required this.onUpdateAllWheels,
  });

  @override
  State<WheelCreateWidget> createState() => _WheelCreateWidgetState();
}

class _WheelCreateWidgetState extends State<WheelCreateWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.wheels.isNotEmpty) _title(),
        if (widget.wheels.isNotEmpty) const SizedBox(height: AppProps.kPageMargin),
        _list(),
      ],
    );
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

  Widget _list() {
    return Column(
      children: widget.wheels.mapIndexed((i, item) {
        return _buildWheelItem(item);
      }).toList(),
    );
  }

  Widget _buildWheelItem(WheelEntity item) {
    final inputFormatters = MaskTextInputFormatter(
      mask: '###/## r##',
      initialText: item.nameController.text,
      filter: {"#": RegExp(r'[0-9]')},
    );
    final formatters = MaskTextInputFormatter(
      mask: '####', initialText: item.countController.text, filter: {"#": RegExp(r'[0-9]')},
    );

    return Container(
      height: 35,
      margin: const EdgeInsets.only(bottom: AppProps.kMediumMargin),
      padding: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(AppProps.kMediumBorderRadius),
        border: Border.all(color: AppColors.kBorder),
      ),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              backgroundColor: AppColors.kRed,
              icon: Icons.delete,
              onPressed: (context) => widget.onPressedDeleteItem(item),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextFormField(
                inputFormatters: [inputFormatters],
                cursorColor: AppColors.kPrimary,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                controller: item.nameController,
                focusNode: item.focusNode,
                readOnly: item.isRead,
                decoration: const InputDecoration(
                  hintText: '___/__ r__',
                  filled: true,
                  isDense: true,
                  isCollapsed: true,
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 4),
                ),
              ),
            ),
            const SizedBox(width: AppProps.kMediumMargin),
            Expanded(
              child: TextFormField(
                inputFormatters: [formatters],
                cursorColor: AppColors.kPrimary,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                controller: item.countController,
                onChanged: _onChangeFormField,
                decoration: const InputDecoration(
                  hintText: '_____',
                  filled: true,
                  isDense: true,
                  isCollapsed: true,
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 4),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onChangeFormField(String text) {
    int count = 0;

    for (var element in widget.wheels) {
      if (element.countController.text.isNotEmpty) {
        count += int.parse(element.countController.text);
      }
    }

    widget.onCountController(count);
  }
}
