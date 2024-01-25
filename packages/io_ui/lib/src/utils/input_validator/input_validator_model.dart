part of io_ui;

enum AppInputValidatorEnum {
  EMPTY,
  EMAIL,
  MIN_LENGTH,
  MAX_LENGTH,
  LENGTH,
  ERROR,
}

class AppInputValidatorModel {
  final AppInputValidatorEnum validation;
  final int length;
  final String errorString;

  AppInputValidatorModel({required this.validation, this.length = 0, required this.errorString});
}
