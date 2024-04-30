part of 'wheel_bloc.dart';

@freezed
class WheelEvent with _$WheelEvent {
  const factory WheelEvent.getWheelsById({required int wheelId}) = _GetWheelsById;
  const factory WheelEvent.addWheel({required SalesDetailEntity salesDetailEntity}) = _AddWheel;
  const factory WheelEvent.getActions() = _GetActions;
  const factory WheelEvent.actionDefect({required SalesDetailEntity salesDetailEntity}) = _ActionDefect;
  const factory WheelEvent.actionSales({required SalesDetailEntity salesDetailEntity}) = _ActionSales;
  const factory WheelEvent.actionReturn({required SalesDetailEntity salesDetailEntity}) = _ActionReturn;
}
