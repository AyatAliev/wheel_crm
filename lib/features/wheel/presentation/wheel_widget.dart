import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/presentation/acceptance_widget.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart';
import 'package:wheel_crm/features/wheel/presentation/detail/sales_detail_widget.dart';
import 'package:wheel_crm/features/wheel/presentation/widgets/other/wheel_list.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class WheelWidget extends StatefulWidget {
  const WheelWidget({super.key});

  @override
  State<WheelWidget> createState() => _WheelWidgetState();
}

class _WheelWidgetState extends State<WheelWidget> {
  final ValueNotifier<bool> _isLoading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WheelBloc, WheelState>(
      listener: _listenerWheelBloc,
      builder: (context, state) {
        return Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: state.sales.isEmpty ? _WheelEmpty() : WheelList(sales: state.sales),
            ),
            FabButtonWidget(
              onTap: () async {
                final result = await AppBottomSheet.show<bool>(
                  context: context,
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider.value(value: BlocProvider.of<StorageBloc>(context)),
                      BlocProvider.value(value: BlocProvider.of<WheelBloc>(context)),
                    ],
                    child: const SalesDetailWidget(),
                  ),
                );

                if ((result ?? false) && context.mounted) {
                  context.read<WheelBloc>().add(const WheelEvent.getSales());
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

  void _listenerWheelBloc(BuildContext context, WheelState state) {
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

class _WheelEmpty extends StatelessWidget {
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
            t.emptySellTitle,
            style: AppTextStyle.titleStyle.copyWith(color: AppColors.kGreyDark),
          ),
          const SizedBox(height: AppProps.kSmallMargin),
          Text(
            t.emptySellDesc,
            style: AppTextStyle.secondaryStyle.copyWith(color: AppColors.kGreyDark),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
