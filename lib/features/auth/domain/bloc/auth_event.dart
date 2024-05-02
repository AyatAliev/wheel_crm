part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authorization({
    required String email,
    required String password,
  }) = _Authorization;

  const factory AuthEvent.changePassword({
    required String newPassword,
    required String confirmPassword,
  }) = _ChangePassword;
}
