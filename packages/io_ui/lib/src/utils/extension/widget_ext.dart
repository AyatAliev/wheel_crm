part of io_ui;

extension OpaqueBehaviorExtension on GestureDetector {
  GestureDetector withOpaqueBehavior() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: child,
    );
  }
}