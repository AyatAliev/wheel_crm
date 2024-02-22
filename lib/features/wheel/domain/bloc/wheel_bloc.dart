import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_detail_entity.dart';
import 'package:wheel_crm/features/wheel/domain/entity/sales_entity.dart';
import 'package:wheel_crm/features/wheel/domain/repository/wheel_repository.dart';

part 'wheel_bloc.freezed.dart';

part 'wheel_event.dart';

part 'wheel_state.dart';

@injectable
class WheelBloc extends Bloc<WheelEvent, WheelState> {
  final WheelRepository _repository;

  WheelBloc(this._repository)
      : super(const WheelState(
          stateStatus: StateStatus.initial(),
          sales: [],
        )) {
    on<_GetWheelsById>(_onGetWheelsById);
    on<_GetSales>(_onGetSales);
  }

  FutureOr<void> _onGetWheelsById(_GetWheelsById event, Emitter<WheelState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getWheelsById(
      wheelId: event.wheelId,
    );

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(WheelBlocSuccess.details), wheelDetail: r));
    });
  }

  FutureOr<void> _onGetSales(_GetSales event, Emitter<WheelState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getSales();

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), sales: r));
    });
  }
}

enum WheelBlocSuccess { details }
