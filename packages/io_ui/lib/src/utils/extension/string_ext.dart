part of io_ui;

extension AppStringExtension on String {
  String formatDateToCustomString() {
    DateTime date = DateTime.parse(this);

    final months = [
      'января',
      'февраля',
      'марта',
      'апреля',
      'мая',
      'июня',
      'июля',
      'августа',
      'сентября',
      'октября',
      'ноября',
      'декабря'
    ];

    return '${date.day} ${months[date.month - 1]}';
  }

  DateTime? parseYYYYMMddTHHmmss() {
    if (isNotEmpty) {
      return DateFormat(DateFormatEnum.YYYYMMddTHHmmss.name).parse(this);
    }

    return null;
  }

  DateTime parceyyyyHyphenMMdd() {
    return DateFormat(DateFormatEnum.yyyyHyphenMMdd.name).parse(this);
  }

  DateTime? parseddMM() {
    if (isNotEmpty) {
      return DateFormat(DateFormatEnum.ddMM.name).parse(this);
    }

    return null;
  }

  DateTime? parceddMMyyyy() {
    if (isNotEmpty) {
      return DateFormat(DateFormatEnum.ddMMyyyy.name).parse(this);
    }

    return null;
  }

  int get asInt {
    return int.parse(replaceAll(':00', ''));
  }
}
