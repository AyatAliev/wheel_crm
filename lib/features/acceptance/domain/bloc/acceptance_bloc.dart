import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/acceptance/domain/entity/acceptance_entity.dart';
import 'package:wheel_crm/features/acceptance/domain/repository/acceptance_repository.dart';

part 'acceptance_bloc.freezed.dart';

part 'acceptance_event.dart';

part 'acceptance_state.dart';

@injectable
class AcceptanceBloc extends Bloc<AcceptanceEvent, AcceptanceState> {
  final AcceptanceRepository _repository;

  AcceptanceBloc(this._repository)
      : super(const AcceptanceState(
          stateStatus: StateStatus.initial(),
          acceptanceEntity: [],
        )) {
    on<_GetAcceptance>(_onGetAcceptance);
  }

  FutureOr<void> _onGetAcceptance(_GetAcceptance event, Emitter<AcceptanceState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getAcceptance(
      startDate: event.startDate,
      endDate: event.endDate,
      storageId: event.storageId,
    );

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), acceptanceEntity: r));
    });
  }
}
