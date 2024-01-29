import 'package:flutter/material.dart';
import 'package:io_ui/io_ui.dart';
import 'package:wheel_crm/gen/assets.gen.dart';
import 'package:wheel_crm/gen/strings.g.dart';

class OverlayFilter extends StatefulWidget {
  final Widget child;
  final Widget overlayChild;

  const OverlayFilter({
    super.key,
    required this.child,
    required this.overlayChild,
  });

  @override
  State<OverlayFilter> createState() => _OverlayFilterState();
}

class _OverlayFilterState extends State<OverlayFilter> with SingleTickerProviderStateMixin {
  late OverlayEntry _overlayEntry;
  bool _isOverlayVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleOverlay,
      child: widget.child,
    );
  }

  void _toggleOverlay() {
    setState(() {
      _isOverlayVisible = !_isOverlayVisible;

      if (_isOverlayVisible) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context).insert(_overlayEntry);
      } else {
        _overlayEntry.remove();
      }
    });
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final childPosition = renderBox.localToGlobal(Offset.zero);
    final overlayTop = childPosition.dy - 40;

    return OverlayEntry(
      builder: (_) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _toggleOverlay,
              child: Container(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          Positioned(
            top: overlayTop,
            width: MediaQuery.of(context).size.width - 60,
            height: 251,
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(AppProps.kPageMargin),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(AppProps.kDefaultBorderRadius)),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _toggleOverlay();
                      },
                      child: Row(
                        children: [
                          Assets.icons.icFilter.svg(),
                          const SizedBox(width: AppProps.kSmallMargin),
                          Text(
                            t.filter,
                            style: AppTextStyle.secondaryStyle,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppProps.kMediumMargin),
                    const Divider(
                      height: 1,
                      color: AppColors.kDivider,
                    ),
                    const SizedBox(height: AppProps.kMediumMargin),
                    widget.overlayChild,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry.dispose();
    super.dispose();
  }
}
