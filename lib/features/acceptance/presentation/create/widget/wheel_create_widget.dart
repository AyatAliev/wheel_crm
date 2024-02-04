import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class WheelCreateWidget extends StatefulWidget {
  final List<String> wheels;
  final Function(int count) onCountController;
  final Function(String item) onPressedDeleteItem;

  const WheelCreateWidget({
    super.key,
    required this.wheels,
    required this.onCountController,
    required this.onPressedDeleteItem,
  });

  @override
  State<WheelCreateWidget> createState() => _WheelCreateWidgetState();
}

class _WheelCreateWidgetState extends State<WheelCreateWidget> {
  late final MaskTextInputFormatter _namedFormatter;
  late final MaskTextInputFormatter _countFormatter;

  late final List<TextEditingController> _inputNamedControllers = [];
  late final List<TextEditingController> _inputCountControllers = [];

  @override
  void initState() {
    super.initState();
    _namedFormatter = MaskTextInputFormatter(mask: '###/## r##');
    _countFormatter = MaskTextInputFormatter(mask: '#####');
  }

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
            'Наименование',
            style: AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
          ),
        ),
        const SizedBox(width: AppProps.kMediumMargin),
        Expanded(
          child: Text(
            'Кол-во',
            style: AppTextStyle.mediumStyle.copyWith(color: AppColors.kDarkGrey),
          ),
        ),
      ],
    );
  }

  Widget _list() {
    return Column(
      children: widget.wheels.mapIndexed((i, item) {
        _inputNamedControllers.add(TextEditingController(text: widget.wheels[i]));
        _inputCountControllers.add(TextEditingController(text: widget.wheels[i]));

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
            key: ValueKey(i),
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
                    cursorColor: AppColors.kPrimary,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [_namedFormatter],
                    controller: _inputNamedControllers[i],
                    decoration: const InputDecoration(
                      hintText: '____/__ r__',
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
                    cursorColor: AppColors.kPrimary,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    controller: _inputCountControllers[i],
                    inputFormatters: [_countFormatter],
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
      }).toList(),
    );
  }

  void _onChangeFormField(String text) {
    int count = 0;

    for (var element in _inputCountControllers) {
      if (element.text.isNotEmpty) {
        count += int.parse(element.text);
      }
    }

    widget.onCountController(count);
  }

  @override
  void dispose() {
    _inputCountControllers.clear();
    _inputNamedControllers.clear();
    super.dispose();
  }
}
