import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/features/profile/domain/entity/profile_entity.dart';
import 'package:wheel_crm/features/profile/domain/repository/profile_repository.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _repository;

  ProfileBloc(this._repository) : super(const ProfileState(stateStatus: StateStatus.initial())) {
    on<_GetProfile>(_onGetProfile);
  }

  FutureOr<void> _onGetProfile(_GetProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getProfile();

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), profileEntity: r));
    });
  }
}
