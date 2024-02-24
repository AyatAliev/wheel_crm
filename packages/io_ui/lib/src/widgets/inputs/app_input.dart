part of io_ui;

class AppInput extends StatefulWidget with InputValidationMixin {
  static const double kDefaultHeight = 60;
  static const double kDefaultBorderHeight = 30;

  final Widget? prefix;
  final Widget? suffixWidget;
  final String? hintText;
  final String? suffixText;
  final TextInputType inputType;
  final TextStyle textStyle;
  final TextStyle? hintStyle;
  final Color backgroundColor;
  final TextEditingController controller;
  final double? height;
  final bool autoFocus;
  final EdgeInsets padding;
  final bool readOnly;
  final Function(bool)? onFocus;
  final Function(String)? onChanged;
  final List<TextInputFormatter> formatters;
  final String? errorString;
  final List<AppInputValidatorModel> validators;
  final FocusNode? focusNode;
  final bool? disable;
  final String? title;
  final TextInputAction? inputAction;
  final int? maxLines;
  final int? minLines;
  final EdgeInsets scrollPadding;
  final TextAlign textAlign;
  final bool obscureText;
  final Decoration? boxDecoration;
  final EdgeInsets? contentPadding;
  final void Function(String val)? onFieldSubmitted;
  final void Function()? onTap;

  const AppInput({
    Key? key,
    this.prefix = const SizedBox(),
    this.inputType = TextInputType.text,
    this.textStyle = AppTextStyle.bodyLargeStyle,
    this.backgroundColor = AppColors.kLightGrey,
    required this.controller,
    this.title,
    this.height = kDefaultHeight,
    this.disable = false,
    this.autoFocus = false,
    this.padding = const EdgeInsets.symmetric(horizontal: AppProps.kPageMargin, vertical: AppProps.kMediumMargin),
    this.readOnly = false,
    this.onFocus,
    this.suffixWidget = const SizedBox(),
    this.formatters = const [],
    this.errorString,
    this.validators = const [],
    this.focusNode,
    this.onChanged,
    this.hintStyle,
    this.hintText,
    this.maxLines,
    this.minLines,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.textAlign = TextAlign.start,
    this.suffixText,
    this.inputAction,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.boxDecoration,
    this.onTap, this.contentPadding,
  }) : super(key: key);

  AppInput.border({
    Key? key,
    this.prefix = const SizedBox(),
    this.inputType = TextInputType.text,
    this.textStyle = AppTextStyle.secondaryStyle,
    this.backgroundColor = AppColors.kWhite,
    required this.controller,
    this.title,
    this.height = kDefaultBorderHeight,
    this.disable = false,
    this.autoFocus = false,
    this.padding = const EdgeInsets.symmetric(vertical: AppProps.kSmallMarginX2, horizontal: AppProps.kMediumMargin),
    this.readOnly = false,
    this.onFocus,
    this.suffixWidget = const SizedBox(),
    this.formatters = const [],
    this.errorString,
    this.validators = const [],
    this.focusNode,
    this.onChanged,
    this.hintStyle = AppTextStyle.secondaryStyle,
    this.hintText,
    this.maxLines,
    this.minLines,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.textAlign = TextAlign.start,
    this.suffixText,
    this.inputAction,
    this.obscureText = false,
    this.onFieldSubmitted,
    this.boxDecoration,
    this.onTap,
    this.contentPadding,
  }) : super(key: key);

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  String? _errorString;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _errorString = widget.errorString;
    super.initState();
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(AppProps.kDefaultBorderRadius)),
        border: _errorString != null ? Border.all(color: AppColors.kRedLight) : null);
  }

  Widget _suffix() {
    return Positioned(
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          width: 16,
          height: 16,
          child: widget.suffixWidget,
        ),
      ),
    );
  }

  Widget _prefix() {
    return widget.prefix != null ? widget.prefix! : const SizedBox();
  }

  Widget _input() {
    return Expanded(
      child: TextFormField(
        // onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
        textAlign: widget.textAlign,
        onTap: widget.onTap,
        obscureText: widget.obscureText,
        scrollPadding: widget.scrollPadding,
        maxLines: widget.obscureText ? 1 : widget.maxLines,
        textInputAction: widget.inputAction,
        minLines: widget.minLines,
        enabled: widget.disable == false,
        keyboardType: widget.inputType,
        controller: widget.controller,
        inputFormatters: widget.formatters,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        autofocus: widget.autoFocus,
        cursorColor: AppColors.kPrimary,
        style: widget.textStyle,
        onFieldSubmitted: widget.onFieldSubmitted,
        textAlignVertical: TextAlignVertical.center,
        expands: widget.maxLines != null ? true : false,
        decoration: InputDecoration(
          filled: true,
          fillColor: widget.backgroundColor,
          constraints: const BoxConstraints.expand(height: 20),
          suffixIcon: Text(
            widget.suffixText ?? '',
            style: widget.hintStyle ?? AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kGreySecondary),
          ),
          suffixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
          hintStyle: widget.hintStyle ?? AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kGreySecondary),
          hintText: widget.hintText,
          errorStyle: const TextStyle(height: 0, fontSize: 0),
          isDense: true,
          border: InputBorder.none,
          contentPadding: widget.contentPadding ?? const EdgeInsets.only(bottom: 0, top: 2),
        ),
        validator: (val) {
          String? errStr = widget.validateField(val?.trim(), widget.validators);

          if (errStr != null) {
            setState(() {
              _errorString = errStr;
            });
            return '';
          }

          setState(() {
            _errorString = null;
          });
          return null;
        },
        readOnly: widget.readOnly,
        onEditingComplete: () {
          // FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }

  Widget _body() {
    return Focus(
      focusNode: _focusNode,
      onFocusChange: (focus) {
        if (widget.onFocus != null) {
          widget.onFocus!(focus);
        }
      },
      child: GestureDetector(
        onTap: () => _focusNode.requestFocus(),
        child: Container(
          padding: widget.padding,
          height: widget.height,
          decoration: widget.boxDecoration ?? _boxDecoration(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.title != null)
                    Text(
                      widget.title!,
                      style: AppTextStyle.mediumStyle.copyWith(color: AppColors.kGrey),
                    ),
                  if (widget.title != null) const SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _prefix(),
                      _input(),
                    ],
                  ),
                ],
              ),
              if (widget.suffixWidget != null) _suffix(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _errorWidget() {
    return Container(
      margin: const EdgeInsets.only(
        left: AppProps.kPageMargin,
        top: AppProps.kPageMargin,
      ),
      child: Text(
        _errorString!,
        style: AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kRedLight),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: size.width,
          child: _body(),
        ),
        if (_errorString != null && _errorString?.isNotEmpty == true)
          Container(
            margin: const EdgeInsets.only(left: AppProps.kPageMargin, top: 4),
            child: _errorWidget(),
          ),
      ],
    );
  }
}
