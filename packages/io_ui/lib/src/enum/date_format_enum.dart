part of io_ui;

enum DateFormatEnum { ddMM, ddMMyyyy, yyyyHyphenMMdd, YYYYMMddTHHmmss }

extension EnumDateFormatValue on DateFormatEnum {
  String get name {
    switch (this) {
      case DateFormatEnum.ddMM:
        return 'dd.MM';
      case DateFormatEnum.ddMMyyyy:
        return 'dd-MM-yyyy';
        case DateFormatEnum.yyyyHyphenMMdd:
        return 'yyyy-MM-dd';
      case DateFormatEnum.YYYYMMddTHHmmss:
        return 'yyyy-MM-ddTHH:mm:ss';
    }
  }
}
