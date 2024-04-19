import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/create_acceptance_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/other/acceptance_list.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class AcceptanceWidget extends StatefulWidget {
  const AcceptanceWidget({super.key});

  @override
  State<AcceptanceWidget> createState() => _AcceptanceWidgetState();
}

class _AcceptanceWidgetState extends State<AcceptanceWidget> {
  final ValueNotifier<bool> _isLoading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AcceptanceBloc, AcceptanceState>(
      listener: _listenerAcceptanceBloc,
      builder: (context, state) {
        return Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: state.acceptanceEntities.isEmpty
                  ? _AcceptanceEmpty()
                  : AcceptanceList(acceptances: state.acceptanceEntities),
            ),
            FabButtonWidget(
              onTap: () async {
                final result = await AppBottomSheet.show<bool>(
                  context: context,
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider.value(value: BlocProvider.of<StorageBloc>(context)),
                      BlocProvider.value(value: BlocProvider.of<AcceptanceBloc>(context)),
                    ],
                    child: const CreateAcceptanceWidget(),
                  ),
                );

                if ((result ?? false) && context.mounted) {
                  context.read<AcceptanceBloc>().add(const AcceptanceEvent.getAcceptance());
                }
              },
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
    );
  }

  void _listenerAcceptanceBloc(BuildContext context, AcceptanceState state) {
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

class _AcceptanceEmpty extends StatelessWidget {
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
            t.youHaveNotAcceptance,
            style: AppTextStyle.titleStyle.copyWith(color: AppColors.kGreyDark),
          ),
          const SizedBox(height: AppProps.kSmallMargin),
          Text(
            t.addedAcceptance,
            style: AppTextStyle.secondaryStyle.copyWith(color: AppColors.kGreyDark),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class FabButtonWidget extends StatelessWidget {
  final void Function() onTap;

  const FabButtonWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: const EdgeInsets.only(
            right: AppProps.kTwentyMargin,
            bottom: AppProps.kPageMarginX3,
          ),
          child: GestureDetector(
            onTap: onTap,
            child: Assets.icons.icFabPlus.svg(
              width: 50,
              height: 50,
            ),
          ).withOpaqueBehavior(),
        ),
      ),
    );
  }
}
