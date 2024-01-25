/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

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

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
