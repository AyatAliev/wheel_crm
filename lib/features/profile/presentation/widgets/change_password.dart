import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/auth/domain/bloc/auth_bloc.dart';
import 'package:wheel_crm/gen/strings.g.dart';
import 'package:wheel_crm/injection/injection.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isVisible = false;
  late final _newController = TextEditingController();
  late final _confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(AppProps.kPageMargin),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Изменить пароль',
                    style: AppTextStyle.titleStyle,
                  ),
                  _divider(),
                  const SizedBox(height: AppProps.kPageMargin),
                  AppInput(
                    title: 'Новый пароль',
                    controller: _newController,
                    obscureText: _isVisible,
                    inputAction: TextInputAction.next,
                    suffixWidget: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      child: Icon(
                        _isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppProps.kPageMargin),
                  AppInput(
                    title: 'Подтвердите пароль',
                    controller: _confirmController,
                    obscureText: _isVisible,
                    suffixWidget: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      child: Icon(
                        _isVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppProps.kPageMargin),
                  AppButton(
                    onTap: () {
                      if (_newController.text.length >= 6 && _confirmController.text.length >= 6) {
                        FocusScope.of(context).unfocus();
                        context.read<AuthBloc>().add(
                          AuthEvent.changePassword(
                            newPassword: _newController.text.trim(),
                            confirmPassword: _confirmController.text.trim(),
                          ),
                        );
                      } else {
                        AppSnackBar.show(context: context, titleText: t.passwordError, error: true);
                      }
                    },
                    text: 'Сохранить',
                  )
                ],
              ),
            ),
          );
        },
        listener: _listenerBloc,
      ),
    );
  }

  Widget _divider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppProps.kPageMargin),
        Container(
          height: 1,
          decoration: const BoxDecoration(color: Color(0xFFCFD0D1)),
        ),
        const SizedBox(height: AppProps.kPageMargin),
      ],
    );
  }

  void _listenerBloc(BuildContext context, AuthState state) {
    state.stateStatus.mapOrNull(success: (val) {
      if (val.value is String) {
        AppSnackBar.show(context: context, titleText: val.value);
        context.router.back();
      }
    }, failure: (msg) {
      AppSnackBar.show(context: context, titleText: msg.message, error: true);
    });
  }
}
