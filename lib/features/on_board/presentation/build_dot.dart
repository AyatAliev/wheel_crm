import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';

Container buildDot(int currentIndex ,int index, BuildContext context) {
  return Container(
    height: 13,
    width: 13,
    margin: const EdgeInsets.only(right: AppProps.kSmallMarginX2),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppProps.kTwentyMargin),
        color: currentIndex == index ?  AppColors.kBlueDark : AppColors.kGrey),
  );
}