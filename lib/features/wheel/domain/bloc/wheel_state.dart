part of 'wheel_bloc.dart';

@freezed
class WheelState with _$WheelState {
  const factory WheelState({
    required final StateStatus stateStatus,
    required List<WheelEntity> wheels,
  }) = _WheelState;
}
