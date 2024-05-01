import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
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
              title: 'Текущий пароль',
              controller: TextEditingController(),
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
              title: 'Новый пароль',
              controller: TextEditingController(),
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
              controller: TextEditingController(),
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
              onTap: () {},
              text: 'Сохранить',
            )
          ],
        ),
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
}
