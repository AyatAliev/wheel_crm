import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      debugShowCheckedModeBanner: false,
      color: AppColors.kPrimary,
      theme: AppTextStyle.theme,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: SafeArea(child: child ?? const SizedBox()),
        );
      },
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
