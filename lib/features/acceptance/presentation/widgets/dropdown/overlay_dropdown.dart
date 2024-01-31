import 'package:collection/collection.dart';
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

    return Positioned(
      top: overlayTop - 2,
      width: renderBox.size.width - 60,
      height: widget.items.length * 24,
      left: 16,
      child: Material(
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppProps.kSmallMarginX2,
            horizontal: AppProps.kMediumMargin,
          ),
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
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isFirstItem) const SizedBox(height: AppProps.kSmallMarginX2),
          GestureDetector(
            onTap: () {
              if (!isFirstItem) {
                widget.onSelectItem(item);
                _hideOverlay();
              } else {
                _hideOverlay();
              }
            },
            child: SizedBox(
              width: double.infinity,
              child: Text(
                item,
                style: AppTextStyle.secondaryStyle.copyWith(
                  color: item == widget.selectedItem && widget.selectedItem != widget.items.first
                      ? AppColors.kPrimary
                      : isFirstItem
                          ? AppColors.kDarkGrey.withOpacity(0.7)
                          : AppColors.kDarkGrey,
                ),
              ),
            ),
          ).withOpaqueBehavior(),
          if (index != widget.items.length - 1)
            const Column(
              children: [
                SizedBox(height: AppProps.kSmallMarginX2),
                Divider(
                  height: 1,
                  color: AppColors.kDivider,
                ),
              ],
            ),
        ],
      );
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
