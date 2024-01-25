part of io_ui;

class AppTextStyle {
  static ThemeData theme = ThemeData(
    appBarTheme: const AppBarTheme(color: AppColors.kWhite, elevation: 0, titleSpacing: 0),
    fontFamily: FontFamily.raleway,
    primaryColor: AppColors.kPrimary,
    scaffoldBackgroundColor: AppColors.kWhite,
  );

  static const TextStyle heading1Style = TextStyle(
    fontSize: 32,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  static const TextStyle heading2Style = TextStyle(
    fontSize: 60,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w600,
    height: 1,
  );

  static const TextStyle mediumStyle = TextStyle(
    fontSize: 12,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static const TextStyle bodyLargeStyle = TextStyle(
    fontSize: 16,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w600,
    height: 1,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 18,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w600,
    height: 1,
  );

  static const TextStyle secondaryStyle = TextStyle(
    fontSize: 14,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static const TextStyle titleLargeStyle = TextStyle(
    fontSize: 24,
    color: AppColors.kBlack,
    fontFamily: FontFamily.raleway,
    fontWeight: FontWeight.w600,
    height: 1,
  );
}
