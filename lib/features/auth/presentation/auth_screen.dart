import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/core/app/router/app_routes.gr.dart';
import 'package:wheel_crm/core/service/system_chrome_theme.dart';
import 'package:wheel_crm/features/auth/domain/bloc/auth_bloc.dart';
import 'package:wheel_crm/features/auth/presentation/widgets/app_bar_auth.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final TextEditingController _loginController = TextEditingController(text: kDebugMode ? 'a@a.com' : '');
  late final TextEditingController _passwordController = TextEditingController(text: kDebugMode ? '1' : '');

  late final ValueNotifier<bool> _invisiblePassword = ValueNotifier(true);

  late final FocusNode _passwordFocus = FocusNode();

  late final _authFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    SystemChromeTheme.themeDark();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const AppBarAuth(),
        body: BlocListener<AuthBloc, AuthState>(
          listener: _listenerBloc,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin),
            child: Form(
              key: _authFormKey,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          t.enterYourAccountDetails,
                          style: AppTextStyle.titleLargeStyle,
                        ),
                        const SizedBox(height: AppProps.kPageMargin),
                        Text(
                          t.youMustSpecifyYourData,
                          style: AppTextStyle.bodyLargeStyle,
                        ),
                        const SizedBox(height: AppProps.kPageMargin),
                        AppInput(
                          title: t.mail,
                          height: 63,
                          controller: _loginController,
                          inputAction: TextInputAction.next,
                          autoFocus: true,
                          validators: [
                            AppInputValidatorModel(validation: AppInputValidatorEnum.ERROR, errorString: ''),
                          ],
                          onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_passwordFocus),
                        ),
                        const SizedBox(height: AppProps.kPageMargin),
                        ValueListenableBuilder(
                          valueListenable: _invisiblePassword,
                          builder: (context, val, child) {
                            return AppInput(
                              title: t.password,
                              controller: _passwordController,
                              height: 63,
                              obscureText: val,
                              focusNode: _passwordFocus,
                              validators: [
                                AppInputValidatorModel(validation: AppInputValidatorEnum.ERROR, errorString: ''),
                              ],
                              suffixWidget: GestureDetector(
                                onTap: () => _invisiblePassword.value = !val,
                                child: val ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                              ).withOpaqueBehavior(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppProps.kPageMargin),
                  Expanded(
                    child: Center(
                      child: Builder(builder: (context) {
                        return AppButton(
                          onTap: () => _onTapSignIn(context),
                          text: t.signIn,
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _listenerBloc(BuildContext context, AuthState state) {
    state.stateStatus.whenOrNull(
      success: (val) => context.router.pushAndPopUntil(const BottomMenuRoute(), predicate: (_) => false),
      failure: (msg) {
        AppSnackBar.show(context: context, titleText: msg, error: true);
        _authFormKey.currentState?.validate();
      },
    );
  }

  void _onTapSignIn(BuildContext context) {
    context.read<AuthBloc>().add(
          AuthEvent.authorization(
            email: _loginController.text,
            password: _passwordController.text,
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
