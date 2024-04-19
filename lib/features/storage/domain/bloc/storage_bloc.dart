import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/core/network/http_client.dart';
import 'package:wheel_crm/features/storage/domain/entity/storage_entity.dart';
import 'package:wheel_crm/features/storage/domain/repository/storage_repository.dart';
import 'package:wheel_crm/features/wheel/domain/entity/wheel_entity.dart';

part 'storage_bloc.freezed.dart';
part 'storage_event.dart';
part 'storage_state.dart';

@injectable
class StorageBloc extends Bloc<StorageEvent, StorageState> {
  final StorageRepository _repository;

  StorageBloc(this._repository)
      : super(
          const StorageState(
            stateStatus: StateStatus.initial(),
            storages: [],
            wheels: [],
          ),
        ) {
    on<_GetStorages>(_onGetStorage);
    on<_GetStoragesById>(_onGetStoragesById, transformer: debounceSequential(const Duration(milliseconds: 500)));
  }

  FutureOr<void> _onGetStorage(_GetStorages event, Emitter<StorageState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getStorages();

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), storages: r));
    });
  }

  FutureOr<void> _onGetStoragesById(_GetStoragesById event, Emitter<StorageState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getStoragesById(storageId: event.storageId, search: event.search ?? '', season: event.season);

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), wheels: r));
    });
  }
}
