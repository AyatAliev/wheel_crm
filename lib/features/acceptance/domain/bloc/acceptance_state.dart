part of 'acceptance_bloc.dart';

@freezed
class AcceptanceState with _$AcceptanceState {
  const factory AcceptanceState({
    required final StateStatus stateStatus,
    required List<AcceptanceEntity> acceptanceEntitys,
    // required AcceptanceEntity acceptanceEntity,
  }) = _AcceptanceState;
}
