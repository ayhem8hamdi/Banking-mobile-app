import 'package:flutter/material.dart';

class ResponsiveFont {
  static const double _baseWidth = 375.0;

  static double responsiveFontSize(BuildContext context, double fontSize) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double scaleFactor = screenWidth / _baseWidth;

    final double textScale = MediaQuery.of(context).textScaleFactor;

    final double scaledFontSize = fontSize * scaleFactor * textScale;
    final double minFontSize = fontSize * 0.8;
    final double maxFontSize = fontSize * 1.25;

    return scaledFontSize.clamp(minFontSize, maxFontSize);
  }
}
