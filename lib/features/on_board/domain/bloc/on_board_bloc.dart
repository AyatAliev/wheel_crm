import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wheel_crm/core/const/shared_const.dart';
import 'package:wheel_crm/core/network/entity/state_status.dart';
import 'package:wheel_crm/injection/injection.dart';

part 'on_board_bloc.freezed.dart';
part 'on_board_event.dart';
part 'on_board_state.dart';

@injectable
class OnBoardBloc extends Bloc<OnBoardEvent, OnBoardState> {
  OnBoardBloc() : super(const OnBoardState(stateStatus: StateStatus.initial())) {
    on<_IsShown>(_onShownOnBoard);
  }

  Future<void> _onShownOnBoard(_IsShown event, Emitter<OnBoardState> emit) async {
    SharedPreferences prefs = getIt<SharedPreferences>();
    prefs.setBool(SharedPreferenceKeys.isOnBoardingShown.toString(), event.isShown ) ;
    emit(state.copyWith(stateStatus: StateStatus.success()));
  }
}
