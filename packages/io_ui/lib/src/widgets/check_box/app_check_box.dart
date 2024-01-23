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
  bool selected = false;

  @override
  void initState() {
    selected = widget.selected ?? false;
    super.initState();
  }

 @override
  void didUpdateWidget(covariant AppCheckBox oldWidget) {
    setState(() {
      selected = widget.selected ?? false;
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (widget.disable && selected) return;

        setState(() {
          selected = !selected;
        });

        if (widget.onTap != null) {
          widget.onTap!(selected);
        }
      },
      child: Row(
        children: [
          _box(),
          const SizedBox(width: 12),
          _title(),
        ],
      ),
    );
  }

  Widget _box() {
    return Container(
      height: 18,
      width: 18,
      margin: const EdgeInsets.all(3.0),
      decoration: _boxDecoration(),
      child: selected ? widget.selectedSvgPicture : widget.unSelectedSvgPicture,
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
      border: selected == false ? Border.all(color: AppColors.kGreySecondary) : null,
    );
  }

  Widget _title() {
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
