import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/features/acceptance/domain/bloc/acceptance_bloc.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/presentation/create/create_acceptance_widget.dart';
import 'package:wheel_crm/features/acceptance/presentation/widgets/other/acceptance_item.dart';
import 'package:wheel_crm/features/storage/domain/bloc/storage_bloc.dart';

class AcceptanceList extends StatelessWidget {
  final List<AcceptanceEntity> acceptances;

  const AcceptanceList({super.key, required this.acceptances});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            if (acceptances[index].id != null) {
              await AppBottomSheet.show<bool>(
                context: context,
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider.value(value: BlocProvider.of<StorageBloc>(context)),
                    BlocProvider.value(
                      value: BlocProvider.of<AcceptanceBloc>(context)
                        ..add(AcceptanceEvent.getAcceptanceById(id: acceptances[index].id!)),
                    ),
                  ],
                  child: const CreateAcceptanceWidget(preview: true),
                ),
              );
            }
          },
          child: AcceptanceItem(
            createDate: acceptances[index].createAt,
            whoAdded: acceptances[index].whoAdded ?? '',
            storage: acceptances[index].storage.title ?? '',
            count: acceptances[index].amount,
            isLastItem: (acceptances.length - 1) == index,
          ),
        );
      },
      itemCount: acceptances.length,
    );
  }
}
