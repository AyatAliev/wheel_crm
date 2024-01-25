import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:io_ui/io_ui.dart';

class SystemChromeTheme {
  static void themeLight() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        statusBarColor: AppColors.kPrimary,
      ),
    );
  }

  static void themeDark() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
      ),
    );
  }
}
