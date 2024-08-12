import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/gen/assets.gen.dart';

class AppBarAuth extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 48,
      leading: InkWell(
        onTap: () => context.router.back(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
          child: Assets.icons.icLeft.svg(),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
