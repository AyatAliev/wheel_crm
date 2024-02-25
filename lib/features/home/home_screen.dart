import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/service/system_chrome_theme.dart';
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart';
import 'package:wheel_crm/features/acceptance/presentation/acceptance_widget.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/weclome/welcome_screen.dart';
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart';
import 'package:wheel_crm/features/wheel/presentation/wheel_widget.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

import '../storage/presentation/storage_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final List<String> _titles = [t.seller, t.acceptance, t.leftovers];
  late final ValueNotifier<int> _titleSelectedIndexNotifier;

  @override
  void initState() {
    super.initState();
    SystemChromeTheme.themeLight();
    _titleSelectedIndexNotifier = ValueNotifier(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary,
      body: SafeArea(
        child: Column(
          children: [
            ValueListenableBuilder<int>(
                valueListenable: _titleSelectedIndexNotifier,
                builder: (context, index, child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppProps.kPageMargin,
                      vertical: AppProps.kTwentyMargin,
                    ),
                    child: Row(children: _itemLabels()),
                  );
                }),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.kWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppProps.kTwentyRadius),
                    topRight: Radius.circular(AppProps.kTwentyRadius),
                  ),
                ),
                child: ValueListenableBuilder<int>(
                  valueListenable: _titleSelectedIndexNotifier,
                  builder: (context, index, child) {
                    return _buildSelectedWidget(index);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _itemLabels() {
    final List<Widget> list = [];

    for (int i = 0; i < _titles.length; i++) {
      final isSelected = i == _titleSelectedIndexNotifier.value;
      list.add(
        GestureDetector(
          onTap: () {
            _titleSelectedIndexNotifier.value = i;
          },
          child: Text(
            _titles[i],
            style: AppTextStyle.bodyLargeStyle.copyWith(
              color: isSelected ? AppColors.kWhite : AppColors.kWhite.withOpacity(0.8),
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      );

      list.add(const SizedBox(width: AppProps.kBigMargin));
    }

    return list;
  }

  Widget _buildSelectedWidget(int index) {
    switch (index) {
      case 0:
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<AcceptanceBloc>()),
            BlocProvider(create: (_) => getIt<WheelBloc>()..add(const WheelEvent.getSales())),
            BlocProvider(create: (_) => getIt<StorageBloc>()..add(const StorageEvent.getStorages())),
          ],
          child: const WheelWidget(),
        );
      case 1:
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<WheelBloc>()),
            BlocProvider(create: (_) => getIt<AcceptanceBloc>()..add(const AcceptanceEvent.getAcceptance())),
            BlocProvider(create: (_) => getIt<StorageBloc>()..add(const StorageEvent.getStorages())),
          ],
          child: const AcceptanceWidget(),
        );
      case 2:
        return BlocProvider(
          create: (_) => getIt<StorageBloc>()..add(const StorageEvent.getStorages()),
          child: const StorageWidget(),
        );
      default:
        return const WelcomeScreen();
    }
  }

  @override
  void dispose() {
    _titleSelectedIndexNotifier.dispose();
    super.dispose();
  }
}