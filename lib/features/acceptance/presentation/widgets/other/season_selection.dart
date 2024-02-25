import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/const/season_enum.dart';

class SeasonSelection extends StatefulWidget {
  final Function(String text) onTap;
  final String selected;

  const SeasonSelection({super.key, required this.onTap, required this.selected});

  @override
  State<SeasonSelection> createState() => _SeasonSelectionState();
}

class _SeasonSelectionState extends State<SeasonSelection> {
  late final ValueNotifier<bool> _isWinterSelected = ValueNotifier(false);
  late final ValueNotifier<bool> _isSummerSelected = ValueNotifier(false);

  @override
  void initState() {
    if (widget.selected == Season.summer.title) {
      _isSummerSelected.value = true;
    } else {
      _isWinterSelected.value = true;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: const BoxDecoration(
        color: AppColors.kBgToggle,
        borderRadius: BorderRadius.all(Radius.circular(AppProps.kMediumMargin)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: _isWinterSelected,
                builder: (context, value, _) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.onTap.call(Season.winter.title);
                        _isWinterSelected.value = true;
                        _isSummerSelected.value = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: value ? AppColors.kPrimary : Colors.transparent,
                        borderRadius: const BorderRadius.all(Radius.circular(AppProps.kMediumMargin)),
                      ),
                      child: Center(
                        child: Text(
                          Season.winter.title,
                          style: AppTextStyle.bodyLargeStyle.copyWith(
                            color: value ? AppColors.kWhite : AppColors.kBlack,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: ValueListenableBuilder(
                valueListenable: _isSummerSelected,
                builder: (context, value, _) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.onTap.call(Season.summer.title);
                        _isWinterSelected.value = false;
                        _isSummerSelected.value = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: value ? AppColors.kPrimary : Colors.transparent,
                        borderRadius: const BorderRadius.all(Radius.circular(AppProps.kMediumMargin)),
                      ),
                      child: Center(
                        child: Text(
                          Season.summer.title,
                          style: AppTextStyle.bodyLargeStyle.copyWith(
                            color: value ? AppColors.kWhite : AppColors.kBlack,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _isWinterSelected.dispose();
    _isSummerSelected.dispose();
    super.dispose();
  }
}
