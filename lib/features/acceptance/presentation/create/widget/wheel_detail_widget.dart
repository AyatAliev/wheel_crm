import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class WheelDetailWidget extends StatefulWidget {
  const WheelDetailWidget({super.key});

  @override
  State<WheelDetailWidget> createState() => _WheelDetailWidgetState();
}

class _WheelDetailWidgetState extends State<WheelDetailWidget> {
  late final MaskTextInputFormatter _maskFormatter;

  @override
  void initState() {
    super.initState();
    _maskFormatter = MaskTextInputFormatter(mask: '###/## r##');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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

  Widget _search() {
    return Row(
      children: [
        SizedBox(
          width: 160,
          child: AppInput.border(
            controller: TextEditingController(),
            inputType: TextInputType.number,
            hintText: '___/__ r__',
            formatters: [_maskFormatter],
            boxDecoration: BoxDecoration(
              color: AppColors.kWhite,
              borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
              border: Border.all(color: AppColors.kBorder),
            ),
          ),
        ),
        const SizedBox(width: AppProps.kSmallMargin),
        Assets.icons.icSearch.svg(),
      ],
    );
  }

  Widget _list() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: AppProps.kMediumMargin),
            child: Row(
              children: [
                Expanded(
                  child: AppInput.border(
                    height: 35,
                    controller: TextEditingController(text: 'fdffddf'),
                    disable: true,
                    textStyle: AppTextStyle.bodyLargeStyle.copyWith(
                      color: AppColors.kDarkGrey,
                      fontWeight: FontWeight.w400,
                    ),
                    boxDecoration: BoxDecoration(
                      color: AppColors.kWhite,
                      borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                      border: Border.all(color: AppColors.kBorder),
                    ),
                  ),
                ),
                const SizedBox(width: AppProps.kMediumMargin),
                Expanded(
                  child: AppInput.border(
                    height: 35,
                    controller: TextEditingController(text: '40'),
                    disable: true,
                    textStyle: AppTextStyle.bodyLargeStyle.copyWith(
                      color: AppColors.kDarkGrey,
                      fontWeight: FontWeight.w400,
                    ),
                    boxDecoration: BoxDecoration(
                      color: AppColors.kWhite,
                      borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
                      border: Border.all(color: AppColors.kBorder),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: 10,
      ),
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
}
