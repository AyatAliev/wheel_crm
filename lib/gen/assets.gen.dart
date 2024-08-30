/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Inter-Italic-VariableFont_opsz,wght.ttf
  String get interItalicVariableFontOpszWght =>
      'assets/fonts/Inter-Italic-VariableFont_opsz,wght.ttf';

  /// File path: assets/fonts/Inter-VariableFont.ttf
  String get interVariableFont => 'assets/fonts/Inter-VariableFont.ttf';

  /// File path: assets/fonts/Raleway-Black.ttf
  String get ralewayBlack => 'assets/fonts/Raleway-Black.ttf';

  /// File path: assets/fonts/Raleway-Bold.ttf
  String get ralewayBold => 'assets/fonts/Raleway-Bold.ttf';

  /// File path: assets/fonts/Raleway-ExtraBold.ttf
  String get ralewayExtraBold => 'assets/fonts/Raleway-ExtraBold.ttf';

  /// File path: assets/fonts/Raleway-ExtraLight.ttf
  String get ralewayExtraLight => 'assets/fonts/Raleway-ExtraLight.ttf';

  /// File path: assets/fonts/Raleway-Light.ttf
  String get ralewayLight => 'assets/fonts/Raleway-Light.ttf';

  /// File path: assets/fonts/Raleway-Medium.ttf
  String get ralewayMedium => 'assets/fonts/Raleway-Medium.ttf';

  /// File path: assets/fonts/Raleway-Regular.ttf
  String get ralewayRegular => 'assets/fonts/Raleway-Regular.ttf';

  /// File path: assets/fonts/Raleway-SemiBold.ttf
  String get ralewaySemiBold => 'assets/fonts/Raleway-SemiBold.ttf';

  /// File path: assets/fonts/Raleway-Thin.ttf
  String get ralewayThin => 'assets/fonts/Raleway-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        interItalicVariableFontOpszWght,
        interVariableFont,
        ralewayBlack,
        ralewayBold,
        ralewayExtraBold,
        ralewayExtraLight,
        ralewayLight,
        ralewayMedium,
        ralewayRegular,
        ralewaySemiBold,
        ralewayThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/clock_solid.svg
  SvgGenImage get clockSolid =>
      const SvgGenImage('assets/icons/clock_solid.svg');

  /// File path: assets/icons/ic_calendar.svg
  SvgGenImage get icCalendar =>
      const SvgGenImage('assets/icons/ic_calendar.svg');

  /// File path: assets/icons/ic_check_box.svg
  SvgGenImage get icCheckBox =>
      const SvgGenImage('assets/icons/ic_check_box.svg');

  /// File path: assets/icons/ic_check_box_enable.svg
  SvgGenImage get icCheckBoxEnable =>
      const SvgGenImage('assets/icons/ic_check_box_enable.svg');

  /// File path: assets/icons/ic_fab_plus.svg
  SvgGenImage get icFabPlus =>
      const SvgGenImage('assets/icons/ic_fab_plus.svg');

  /// File path: assets/icons/ic_filter.svg
  SvgGenImage get icFilter => const SvgGenImage('assets/icons/ic_filter.svg');

  /// File path: assets/icons/ic_home.svg
  SvgGenImage get icHome => const SvgGenImage('assets/icons/ic_home.svg');

  /// File path: assets/icons/ic_left.svg
  SvgGenImage get icLeft => const SvgGenImage('assets/icons/ic_left.svg');

  /// File path: assets/icons/ic_profile.svg
  SvgGenImage get icProfile => const SvgGenImage('assets/icons/ic_profile.svg');

  /// File path: assets/icons/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/icons/ic_search.svg');

  /// File path: assets/icons/room_comment_icon.svg
  SvgGenImage get roomCommentIcon =>
      const SvgGenImage('assets/icons/room_comment_icon.svg');

  /// File path: assets/icons/room_solid.svg
  SvgGenImage get roomSolid => const SvgGenImage('assets/icons/room_solid.svg');

  /// File path: assets/icons/snowflake.svg
  SvgGenImage get snowflake => const SvgGenImage('assets/icons/snowflake.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        clockSolid,
        icCalendar,
        icCheckBox,
        icCheckBoxEnable,
        icFabPlus,
        icFilter,
        icHome,
        icLeft,
        icProfile,
        icSearch,
        roomCommentIcon,
        roomSolid,
        snowflake
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/tire.png
  AssetGenImage get tire => const AssetGenImage('assets/images/tire.png');

  /// File path: assets/images/tire1.png
  AssetGenImage get tire1 => const AssetGenImage('assets/images/tire1.png');

  /// File path: assets/images/tire2.png
  AssetGenImage get tire2 => const AssetGenImage('assets/images/tire2.png');

  /// File path: assets/images/tire3.png
  AssetGenImage get tire3 => const AssetGenImage('assets/images/tire3.png');

  /// List of all assets
  List<AssetGenImage> get values => [tire, tire1, tire2, tire3];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
