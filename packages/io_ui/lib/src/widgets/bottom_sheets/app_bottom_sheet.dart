part of io_ui;

class AppBottomSheet {
  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    double? initialChildSize,
    Color? color,
  }) async {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      barrierColor: color ?? Colors.transparent,
      builder: (ctx) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: initialChildSize ?? 0.918,
          builder: (_, controller) {
            return Container(
              decoration: const BoxDecoration(
                color: AppColors.kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppProps.kTwentyRadius),
                  topRight: Radius.circular(AppProps.kTwentyRadius),
                ),
              ),
              child: child,
            );
          },
        );
      },
    );
  }
}
