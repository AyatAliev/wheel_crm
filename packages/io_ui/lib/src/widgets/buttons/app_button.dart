part of io_ui;

class AppButton extends StatelessWidget {
  final Function? onTap;
  final String text;
  final Color color;
  final Color borderColor;
  final TextStyle? textStyle;
  final double? width;
  final double height;
  final bool _isOutline;
  static const double kDefaultButtonHeight = 42;
  final Widget prefixWidget;
  final Widget suffixWidget;
  final bool isLoading;
  final double borderRadius;
  final Alignment textAlignment;
  final int textFlex;

  const AppButton({
    Key? key,
    this.isLoading = false,
    required this.onTap,
    required this.text,
    this.color = AppColors.kPrimary,
    this.borderColor = AppColors.kPrimary,
    this.textStyle,
    this.width,
    this.height = kDefaultButtonHeight,
    this.prefixWidget = const SizedBox(),
    this.borderRadius = AppProps.kDefaultBorderRadius,
    this.suffixWidget = const SizedBox(),
    this.textAlignment = Alignment.center,
    this.textFlex = 1,
  })  : _isOutline = false,
        super(key: key);

  Widget _text() {
    return Align(
      alignment: textAlignment,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        style: textStyle ?? AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kWhite),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: borderColor,
        width: 1,
      ),
      color: _isOutline ? Colors.transparent : color,
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
    );
  }

  Widget _content() {
    return Align(
      alignment: Alignment.center,
      child: isLoading
          ? const Padding(
              padding: EdgeInsets.all(4),
              child: CircularProgressIndicator(
                color: AppColors.kGreen,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                prefixWidget,
                Expanded(
                  flex: textFlex,
                  child: _text(),
                ),
                suffixWidget,
              ],
            ),
    );
  }

  Widget _body(Size size) {
    return Ink(
      width: width ?? double.infinity,
      height: height,
      decoration: _boxDecoration(),
      child: _content(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap != null ? () => onTap!() : null,
          child: _body(size),
        ),
      ),
    );
  }
}
