import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';

@RoutePage()
class BottomMenuScreen extends StatefulWidget {
  const BottomMenuScreen({super.key});

  @override
  State<BottomMenuScreen> createState() => _BottomMenuScreenState();
}

class _BottomMenuScreenState extends State<BottomMenuScreen> {
  final List<PageRouteInfo<void>> _buildRoutes = const [
    StorageRoute(),
    ProfileRoute(),
  ];

  List<Widget> _navBarsItems({
    required int activeIndex,
    required Function(int index) onSelectedItem,
  }) {
    return [
      _buildNavItem(
        item: BottomMenuItem(
          label: 'Места',
          index: 0,
        ),
        isActive: activeIndex == 0,
        onSelectedItem: onSelectedItem,
      ),
      _buildNavItem(
        item: BottomMenuItem(
          label: 'Профиль',
          index: 1,
        ),
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
      onTap: () {
        onSelectedItem(item.index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (item.assetName != null)
            Container(
              decoration: isActive
                  ? BoxDecoration(
                      color: AppColors.kPrimary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppProps.kDefaultBorderRadius),
                    )
                  : null,
              padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
              child: SizedBox(
                width: 32,
                height: 32,
                child: SvgPicture.asset(
                  item.assetName!,
                  colorFilter: ColorFilter.mode(
                    isActive ? AppColors.kPrimary : AppColors.kAccent,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          if (item.assetName != null) const SizedBox(height: 4),
          Text(
            item.label,
            style: AppTextStyle.mediumStyle.copyWith(
              color: isActive ? AppColors.kPrimary : AppColors.kAccent,
            ),
          ),
        ],
      ),
    ).withOpaqueBehavior();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: _buildRoutes,
      bottomNavigationBuilder: (_, tabsRouter) {
        return SizedBox(
          height: 80,
          child: Row(
            children: _navBarsItems(
              activeIndex: tabsRouter.activeIndex,
              onSelectedItem: tabsRouter.setActiveIndex,
            ).map((e) => Expanded(child: e)).toList(),
          ),
        );
      },
    );
  }
}

class BottomMenuItem {
  String? assetName;
  String label;
  int index;

  BottomMenuItem({
    this.assetName,
    required this.label,
    required this.index,
  });
}
