part of 'on_board_bloc.dart';

@freezed
class OnBoardEvent with _$OnBoardEvent {
  const factory OnBoardEvent.isShown({required bool isShown}) = _IsShown;
}
