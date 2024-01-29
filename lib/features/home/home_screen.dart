import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/service/system_chrome_theme.dart';
import 'package:wheel_crm/features/acceptance/presentation/acceptance_widget.dart';
import 'package:wheel_crm/features/weclome/welcome_screen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final List<String> _titles = [t.seller, t.acceptance, t.leftovers];
  int _titleSelectedIndex = 0;

  @override
  void initState() {
    SystemChromeTheme.themeLight();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kPrimary,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin, vertical: AppProps.kTwentyMargin),
            child: Row(
              children: _itemLabels(),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppProps.kTwentyRadius),
                  topRight: Radius.circular(AppProps.kTwentyRadius),
                ),
              ),
              child: _buildSelectedWidget(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _itemLabels() {
    final List<Widget> list = [];

    for (int i = 0; i < _titles.length; i++) {
      final isSelected = i == _titleSelectedIndex;
      list.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _titleSelectedIndex = i;
            });
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

  Widget _buildSelectedWidget() {
    switch (_titleSelectedIndex) {
      case 0:
        return const WelcomeScreen();
      case 1:
        return const AcceptanceWidget();
      case 2:
        return const WelcomeScreen();
      default:
        return const WelcomeScreen();
    }
  }
}
