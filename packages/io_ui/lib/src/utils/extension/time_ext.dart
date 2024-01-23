part of io_ui;

extension DateTomeExt on DateTime {
  String formatddMM() {
    return DateFormat(DateFormatEnum.ddMM.name).format(this);
  }

  String formatddMMyyyy() {
    return DateFormat(DateFormatEnum.ddMMyyyy.name).format(this);
  }
  String formatyyyyHyphenMMdd() {
    return DateFormat(DateFormatEnum.yyyyHyphenMMdd.name).format(this);
  }
}
