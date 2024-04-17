part of 'wheel_bloc.dart';

@freezed
class WheelEvent with _$WheelEvent {
  const factory WheelEvent.getWheelsById({required int wheelId}) = _GetWheelsById;
  const factory WheelEvent.addWheel({required SalesDetailEntity salesDetailEntity}) = _AddWheel;
  const factory WheelEvent.getActions() = _GetActions;
}
