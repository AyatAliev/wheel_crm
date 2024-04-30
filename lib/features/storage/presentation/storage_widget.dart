import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/presentation/acceptance_widget.dart';
import 'package:wheel_crm/features/profile/domain/bloc/profile_bloc.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/storage/presentation/widgets/storage_list_widget.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class StorageWidget extends StatefulWidget {
  const StorageWidget({super.key});

  @override
  State<StorageWidget> createState() => _StorageWidgetState();
}

class _StorageWidgetState extends State<StorageWidget> {
  final ValueNotifier<bool> _isLoading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocConsumer<StorageBloc, StorageState>(
          listener: _listenerAcceptanceBloc,
          builder: (context, state) {
            return Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: state.storages.isEmpty ? _StorageEmpty() : StoragesListWidget(storages: state.storages),
                ),
                ValueListenableBuilder(
                  valueListenable: _isLoading,
                  builder: (BuildContext context, bool value, Widget? child) {
                    if (value) {
                      return const Center(child: CircularProgressIndicator(color: AppColors.kPrimary));
                    }

                    return const SizedBox();
                  },
                ),
              ],
            );
          },
        ),
        BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
          if (state.profileEntity?.role == 'Owner') {
            return FabButtonWidget(
              onTap: () async {},
            );
          }

          return const SizedBox();
        }),
      ],
    );
  }

  void _listenerAcceptanceBloc(BuildContext context, StorageState state) {
    state.stateStatus.whenOrNull(
      success: (val) => _isLoading.value = false,
      loading: () => _isLoading.value = true,
      failure: (msg) {
        _isLoading.value = false;
        AppSnackBar.show(context: context, titleText: msg, error: true);
      },
    );
  }

  @override
  void dispose() {
    _isLoading.dispose();
    super.dispose();
  }
}

class _StorageEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AppProps.kPageMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 36),
          Text(
            t.emptyStorageTitle,
            style: AppTextStyle.titleStyle.copyWith(color: AppColors.kGreyDark),
          ),
          const SizedBox(height: AppProps.kSmallMargin),
          Text(
            t.emptyStorageDesc,
            style: AppTextStyle.secondaryStyle.copyWith(color: AppColors.kGreyDark),
          ),
        ],
      ),
    );
  }
}
