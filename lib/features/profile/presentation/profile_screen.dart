import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:io_ui/io_ui.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'В разработке',
        style: AppTextStyle.bodyLargeStyle,
      ),
    );
  }
}
