part of io_ui;

class AppDialog {
  static const BoxDecoration _defaultDecoration = BoxDecoration(color: Colors.white);

  static Future<T?> show<T>(
    BuildContext context, {
    BoxDecoration decoration = _defaultDecoration,
    required Widget child,
  }) {
    return showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppProps.kBorderRadius28),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppProps.kBorderRadius28),
            child: Container(
              decoration: decoration,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
