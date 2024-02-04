part of io_ui;

class AppCheckBox extends StatefulWidget {
  final String? title;
  final TextStyle? textStyle;
  final SvgPicture? selectedSvgPicture;
  final SvgPicture? unSelectedSvgPicture;
  final bool? selected;
  final Function(bool)? onTap;
  final bool disable;

  const AppCheckBox({
    Key? key,
    this.title,
    this.textStyle,
    this.selectedSvgPicture,
    this.unSelectedSvgPicture,
    this.onTap,
    this.selected,
    this.disable = false,
  }) : super(key: key);

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  late ValueNotifier<bool> selectedNotifier;

  @override
  void initState() {
    selectedNotifier = ValueNotifier<bool>(widget.selected ?? false);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant AppCheckBox oldWidget) {
    if (widget.selected != oldWidget.selected) {
      selectedNotifier.value = widget.selected ?? false;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (widget.disable && selectedNotifier.value) return;

        selectedNotifier.value = !selectedNotifier.value;

        if (widget.onTap != null) {
          widget.onTap!(selectedNotifier.value);
        }
      },
      child: Row(
        children: [
          _buildBox(),
          const SizedBox(width: 12),
          _buildTitle(),
        ],
      ),
    );
  }

  Widget _buildBox() {
    return ValueListenableBuilder<bool>(
      valueListenable: selectedNotifier,
      builder: (context, selected, child) {
        return Container(
          height: 18,
          width: 18,
          margin: const EdgeInsets.all(3.0),
          decoration: _boxDecoration(selected),
          child: selected ? widget.selectedSvgPicture : widget.unSelectedSvgPicture,
        );
      },
    );
  }

  BoxDecoration _boxDecoration(bool selected) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
      border: !selected ? Border.all(color: AppColors.kGreySecondary) : null,
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: Text(
        widget.title ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: widget.textStyle,
      ),
    );
  }
}
