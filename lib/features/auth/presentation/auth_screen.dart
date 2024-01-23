import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/gen/strings.g.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final TextEditingController _loginController = TextEditingController(text: kDebugMode ? 'ayat' : '');
  late final TextEditingController _passwordController = TextEditingController(text: kDebugMode ? 'test1234' : '');

  late final ValueNotifier<bool> _invisiblePassword = ValueNotifier(true);

  late final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              t.hello,
              style: AppTextStyle.titleLargeStyle,
            ),
            const SizedBox(height: AppProps.kPageMargin),
            AppInput(
              title: 'ff',
              controller: _loginController,
              inputAction: TextInputAction.next,
              autoFocus: true,
              onFieldSubmitted: (val) {
                FocusScope.of(context).requestFocus(_passwordFocus);
              },
            ),
            const SizedBox(height: AppProps.kPageMargin),
            ValueListenableBuilder(
              valueListenable: _invisiblePassword,
              builder: (context, val, child) {
                return AppInput(
                  controller: _passwordController,
                  obscureText: val,
                  focusNode: _passwordFocus,
                  suffixWidget: GestureDetector(
                    onTap: () {
                      _invisiblePassword.value = !val;
                    },
                    child: val ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                  ).withOpaqueBehavior(),
                  title: 'wwd',
                );
              },
            ),
            const SizedBox(height: AppProps.kPageMargin),
            AppButton(
              onTap: () {
                if (_loginController.text == 'ayat' && _passwordController.text == 'test1234') {
                  context.router.push(const BottomMenuRoute());
                }
              },
              text: 'Войти',
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();

    _passwordFocus.dispose();

    _invisiblePassword.dispose();
    super.dispose();
  }
}
