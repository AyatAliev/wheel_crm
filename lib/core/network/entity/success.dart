import 'failure.dart';
import 'package:fpdart/fpdart.dart';

class Success {
  const Success._();

  static const _instance = Success._();

  static Success get instance => _instance;

  static Right<Failure, Success> get right => Right(Success.instance);
}
