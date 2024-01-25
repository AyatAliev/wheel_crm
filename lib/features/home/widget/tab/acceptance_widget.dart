import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class AcceptanceWidget extends StatelessWidget {
  const AcceptanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                t.appName,
                style: AppTextStyle.heading2Style.copyWith(color: AppColors.kPrimary),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: AppButton(
                onTap: () {
                  context.router.push(const AuthRoute());
                },
                text: t.signIn,
              ),
            ),
          )
        ],
      ),
    );
  }
}
