part of io_ui;

extension NumberExtension on num {
  String formatWithoutTrailingZero() {
    if (this % 1 == 0) {
      return toInt().toString();
    } else {
      return toString();
    }
  }
}