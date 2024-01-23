part of io_ui;

class AppTextStyle {
  static ThemeData theme = ThemeData(
    appBarTheme: const AppBarTheme(color: AppColors.kRedLight, elevation: 0, titleSpacing: 0),
    fontFamily: 'Paragraph',
    primaryColor: AppColors.kPrimary,
    scaffoldBackgroundColor: AppColors.kWhite,
  );

  static const TextStyle heading1Style = TextStyle(
    fontSize: 32,
    color: AppColors.kPrimary,
    fontFamily: 'Paragraph',
    fontWeight: FontWeight.w700,
    height: 1,
  );

  static const TextStyle mediumStyle = TextStyle(
    fontSize: 12,
    color: AppColors.kPrimary,
    fontFamily: 'Paragraph',
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static const TextStyle bodyLargeStyle = TextStyle(
    fontSize: 16,
    color: AppColors.kPrimary,
    fontFamily: 'Paragraph',
    fontWeight: FontWeight.w600,
    height: 1,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 18,
    color: AppColors.kPrimary,
    fontFamily: 'Paragraph',
    fontWeight: FontWeight.w600,
    height: 1,
  );

  static const TextStyle secondaryStyle = TextStyle(
    fontSize: 14,
    color: AppColors.kPrimary,
    fontFamily: 'Paragraph',
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static const TextStyle titleLargeStyle = TextStyle(
    fontSize: 24,
    color: AppColors.kPrimary,
    fontFamily: 'Paragraph',
    fontWeight: FontWeight.w600,
    height: 1,
  );
}
