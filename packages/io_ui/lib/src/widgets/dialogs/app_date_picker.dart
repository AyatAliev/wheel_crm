part of io_ui;

class AppDatePicker {
  static Future<DateTime?> show(
    BuildContext context, {
    required DateTime initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) async {
    return await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate ?? DateTime(DateTime.now().year),
      lastDate: lastDate ?? DateTime.now(),
      locale: const Locale('ru'),
      cancelText: 'Отменить',
      confirmText: 'ОК',
      helpText: 'Выбрать дату',
      initialDatePickerMode: DatePickerMode.year,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(primary: AppColors.kPrimary, surfaceTint: AppColors.kWhite),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
            ),
          ),
          child: child!,
        );
      },
    );
  }
}
