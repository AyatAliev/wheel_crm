import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/gen/assets.gen.dart';

@RoutePage()
class BottomMenuScreen extends StatefulWidget {
  const BottomMenuScreen({super.key});

  @override
  State<BottomMenuScreen> createState() => _BottomMenuScreenState();
}

class _BottomMenuScreenState extends State<BottomMenuScreen> {
  final List<PageRouteInfo<void>> _buildRoutes = const [
    HomeRoute(),
    HomeRoute(),
  ];

  List<Widget> _navBarsItems({
    required int activeIndex,
    required Function(int index) onSelectedItem,
  }) {
    return [
      _buildNavItem(
        item: BottomMenuItem(index: 0, assetName: Assets.icons.icHome.path),
        isActive: activeIndex == 0,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(index: 1, assetName: Assets.icons.icProfile.path),
        isActive: activeIndex == 1,
        onSelectedItem: onSelectedItem,
      ),
    ];
  }

  Widget _buildNavItem({
    bool isActive = true,
    required BottomMenuItem item,
    required Function(int index) onSelectedItem,
  }) {
    return GestureDetector(
      onTap: () => onSelectedItem(item.index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
            child: SizedBox(
              width: 32,
              height: 32,
              child: SvgPicture.asset(
                item.assetName,
                colorFilter: const ColorFilter.mode(
                  AppColors.kBlack,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          if (isActive)
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.kPrimary),
            )
        ],
      ),
    ).withOpaqueBehavior();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _buildRoutes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: 3,
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: SizedBox(
            height: 70,
            child: Row(
              children: _navBarsItems(
                activeIndex: tabsRouter.activeIndex,
                onSelectedItem: tabsRouter.setActiveIndex,
              ).map((e) => Expanded(child: e)).toList(),
            ),
          ),
        );
      },
    );
  }
}

class BottomMenuItem {
  String assetName;
  int index;

  BottomMenuItem({
    required this.assetName,
    required this.index,
  });
}
