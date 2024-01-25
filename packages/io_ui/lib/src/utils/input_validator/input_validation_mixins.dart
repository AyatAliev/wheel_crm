part of io_ui;

mixin InputValidationMixin {
  String? validateField(String? value, List<AppInputValidatorModel>? validators) {
    if (validators == null) {
      return null;
    }

    String? errorString;

    for (var vds in validators) {
      if (value == null) {
        errorString = vds.errorString;
        continue;
      }

      switch (vds.validation) {
        case AppInputValidatorEnum.EMPTY:
          errorString = value.isEmpty ? vds.errorString : null;
          break;
        case AppInputValidatorEnum.EMAIL:
          errorString = _isEmailValid(value, vds.errorString);
          break;
        case AppInputValidatorEnum.MIN_LENGTH:
          errorString = value.length < vds.length ? vds.errorString : null;
          break;
        case AppInputValidatorEnum.MAX_LENGTH:
          errorString = value.length > vds.length ? vds.errorString : null;
          break;
        case AppInputValidatorEnum.LENGTH:
          errorString = value.length != vds.length ? vds.errorString : null;
          break;
        case AppInputValidatorEnum.ERROR:
          errorString = value.length != vds.length ? vds.errorString : null;
          break;
      }

      if (errorString != null && errorString.isNotEmpty) break;
    }

    return errorString;
  }

  String? _isEmailValid(String? value, String errorString) {
    if (value == null) return errorString;

    String pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(value) ? null : errorString;
  }
}
