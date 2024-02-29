import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';

class OverlayDropdown extends StatefulWidget {
  final Widget child;
  final List<String> items;
  final String? selectedItem;
  final void Function(String?) onSelectItem;

  const OverlayDropdown({
    super.key,
    required this.child,
    required this.items,
    required this.selectedItem,
    required this.onSelectItem,
  });

  @override
  State<OverlayDropdown> createState() => _OverlayDropdownState();
}

class _OverlayDropdownState extends State<OverlayDropdown> {
  late OverlayEntry _overlayEntry;

  @override
  void initState() {
    super.initState();
    _overlayEntry = OverlayEntry(builder: (_) => _buildOverlay());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleOverlayVisibility,
      child: widget.child,
    );
  }

  Widget _buildOverlay() {
    final renderBox = context.findRenderObject() as RenderBox;
    final childPosition = renderBox.localToGlobal(Offset.zero);
    final overlayTop = childPosition.dy;
    final double height = widget.items.length * 32 + widget.items.length - 1 + 2;

    return Positioned(
      top: overlayTop + 24,
      width: renderBox.size.width - 60,
      height: height,
      left: 16,
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            border: Border.all(color: AppColors.kBorder),
            borderRadius: BorderRadius.circular(AppProps.kSmallX2BorderRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildItems(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    return widget.items.mapIndexed((index, item) {
      final isFirstItem = item == widget.items.first;
      return GestureDetector(
        onTap: () {
          widget.onSelectItem(item);
          _hideOverlay();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 32,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: AppProps.kMediumMargin),
              child: Text(
                item,
                style: isFirstItem
                    ? AppTextStyle.bodyLargeStyle.copyWith(color: AppColors.kDarkGrey.withOpacity(0.7))
                    : AppTextStyle.secondaryStyle.copyWith(
                        color: item == widget.selectedItem && widget.selectedItem != widget.items.first
                            ? AppColors.kPrimary
                            : AppColors.kDarkGrey,
                      ),
              ),
            ),
            if (index != widget.items.length - 1) const Divider(height: 1, color: AppColors.kDivider),
          ],
        ),
      ).withOpaqueBehavior();
    }).toList();
  }

  void _toggleOverlayVisibility() {
    setState(() {
      if (_overlayEntry.mounted) {
        _hideOverlay();
      } else {
        _showOverlay();
      }
    });
  }

  void _showOverlay() {
    Overlay.of(context).insert(_overlayEntry);
  }

  void _hideOverlay() {
    _overlayEntry.remove();
  }

  @override
  void dispose() {
    _overlayEntry.dispose();
    super.dispose();
  }
}
