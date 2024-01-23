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

  DateTime parseYYYYMMddTHHmmss() {
    return DateFormat(DateFormatEnum.YYYYMMddTHHmmss.name).parse(this);
  }

  DateTime parseddMM() {
    return DateFormat(DateFormatEnum.ddMM.name).parse(this);
  }

  int get asInt {
    return int.parse(replaceAll(':00', ''));
  }
}
