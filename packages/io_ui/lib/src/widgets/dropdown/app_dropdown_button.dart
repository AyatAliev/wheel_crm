part of io_ui;

class AppDropdownButton extends StatelessWidget {
  final String? hint;
  final String? value;
  final List<String> dropdownItems;
  final ValueChanged<String?>? onChanged;
  final DropdownButtonBuilder? selectedItemBuilder;
  final Alignment? hintAlignment;
  final Alignment? valueAlignment;
  final double? buttonHeight, buttonWidth;
  final EdgeInsetsGeometry? buttonPadding;
  final BoxDecoration? buttonDecoration;
  final int? buttonElevation;
  final Widget? icon;
  final double? iconSize;
  final Color? iconEnabledColor;
  final Color? iconDisabledColor;
  final double? itemHeight;
  final EdgeInsetsGeometry? itemPadding;
  final double? dropdownHeight, dropdownWidth;
  final EdgeInsetsGeometry? dropdownPadding;
  final BoxDecoration? dropdownDecoration;
  final int? dropdownElevation;

  const AppDropdownButton({
    required this.value,
    required this.dropdownItems,
    required this.onChanged,
    this.hint,
    this.selectedItemBuilder,
    this.hintAlignment,
    this.valueAlignment,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonPadding,
    this.buttonDecoration,
    this.buttonElevation,
    this.icon,
    this.iconSize,
    this.iconEnabledColor,
    this.iconDisabledColor,
    this.itemHeight,
    this.itemPadding,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownPadding,
    this.dropdownDecoration,
    this.dropdownElevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        isExpanded: true,
        isDense: true,
        hint: hint != null
            ? Container(
                alignment: hintAlignment,
                child: Text(
                  hint!,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: AppTextStyle.bodyLargeStyle,
                ),
              )
            : null,
        value: value,
        items: dropdownItems
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: Container(
                  alignment: valueAlignment ?? Alignment.centerLeft,
                  child: Text(
                    item,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyle.secondaryStyle.copyWith(color: Colors.black),
                  ),
                ),
              ),
            )
            .toList(),
        onChanged: onChanged,
        selectedItemBuilder: selectedItemBuilder,
        iconStyleData: IconStyleData(
          icon: icon ?? const Icon(Icons.arrow_downward_outlined),
          iconSize: iconSize ?? 12,
          iconEnabledColor: iconEnabledColor,
          iconDisabledColor: iconDisabledColor,
        ),
        buttonStyleData: ButtonStyleData(
          height: buttonHeight ?? 60,
          width: buttonWidth ?? 160,
          padding: buttonPadding ?? const EdgeInsets.all(AppProps.kPageMargin),
          decoration: buttonDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(AppProps.kDefaultBorderRadius),
                color: AppColors.kBg,
              ),
          elevation: buttonElevation,
        ),
        menuItemStyleData: MenuItemStyleData(
          height: itemHeight ?? 40,
          padding: itemPadding ?? const EdgeInsets.symmetric(horizontal: 12),
          selectedMenuItemBuilder: (context, child) {
            return Container(
              color: AppColors.kBg,
              child: child,
            );
          },
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: dropdownHeight ?? 200,
          width: dropdownWidth,
          padding: const EdgeInsets.symmetric(vertical: AppProps.kPageMargin),
          decoration: dropdownDecoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(AppProps.kDefaultBorderRadius),
                color: Colors.white,
              ),
          elevation: dropdownElevation ?? 3,
        ),
        style: AppTextStyle.bodyLargeStyle,
      ),
    );
  }
}
