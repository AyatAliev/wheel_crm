import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wheel_crm/core/app/app.dart';
import 'package:wheel_crm/core/network/entity/failure.dart';
import 'package:wheel_crm/core/ovverides/http_overrides.dart';
import 'package:wheel_crm/core/service/auth_service.dart';
import 'package:wheel_crm/core/service/local_storage_service.dart';
import 'package:wheel_crm/core/service/system_chrome_theme.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

FutureOr<void> main() async {
  SystemChromeTheme.themeDark();

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocaleSettings.useDeviceLocale();

    await configureDependencies();
    await getIt<LocalStorageService>().initializeLocalStorage();

    HttpOverrides.global = MyHttpOverrides();

    await getIt<AuthService>().recoverUser();

    runApp(TranslationProvider(child: const App()));
  }, (error, stackTrace) {
    print(error);
    if (error is Authorization) {
      // TODO open Authorization Screen
    }
  });
}
