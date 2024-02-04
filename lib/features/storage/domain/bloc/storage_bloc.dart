import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/storage/domain/repository/storage_repository.dart';

part 'storage_bloc.freezed.dart';

part 'storage_event.dart';

part 'storage_state.dart';

@injectable
class StorageBloc extends Bloc<StorageEvent, StorageState> {
  final StorageRepository _repository;

  StorageBloc(this._repository)
      : super(const StorageState(
          stateStatus: StateStatus.initial(),
          storageEntity: [],
        )) {
    on<_GetStorages>(_onGetStorage);
  }

  FutureOr<void> _onGetStorage(_GetStorages event, Emitter<StorageState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getStorages();

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), storageEntity: r));
    });
  }
}
