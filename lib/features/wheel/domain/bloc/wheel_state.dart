part of 'wheel_bloc.dart';

@freezed
class WheelState with _$WheelState {
  const factory WheelState({
    required final StateStatus stateStatus,
    SalesDetailEntity? wheelDetail,
    required List<SalesEntity> sales,
  }) = _WheelState;
}
