import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';
import 'package:wheel_crm/features/wheel/domain/bloc/wheel_bloc.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart';
import 'package:wheel_crm/features/wheel/presentation/detail/sales_detail_widget.dart';
import 'package:wheel_crm/features/wheel/presentation/widgets/filter/wheel_filter.dart';
import 'package:wheel_crm/features/wheel/presentation/widgets/other/wheel_item.dart';

class WheelList extends StatelessWidget {
  final List<SalesEntity> sales;

  const WheelList({super.key, required this.sales});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: AppProps.kPageMargin,
            left: AppProps.kPageMargin,
          ),
          child: const WheelFilter(),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => onTapItem(context, index),
                child: WheelItem(
                  createDate: sales[index].createdAt ?? DateTime.now(),
                  whoAdded: sales[index].user ?? '',
                  storage: sales[index].storage?.title ?? '',
                  count: sales[index].amount ?? 0,
                  isLastItem: (sales.length - 1) == index,
                  typeAction: 'Продажа',
                ),
              ).withOpaqueBehavior();
            },
            itemCount: sales.length,
          ),
        )
      ],
    );
  }

  Future<void> onTapItem(BuildContext context, int index) async {
    if (sales[index].id != null) {
      context.read<WheelBloc>().add(WheelEvent.getWheelsById(wheelId: sales[index].id!));
    }

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
  }
}
