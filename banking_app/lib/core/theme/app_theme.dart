import 'package:banking_app/core/theme/colors/dark_colors.dart';
import 'package:banking_app/core/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ThemeColorScheme.lightColorScheme,
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ThemeColorScheme.darkColorScheme,
  );
}

class ThemeColorScheme {
  static ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppDarkColors.primaryColor,
    onPrimary: AppDarkColors.onPrimaryColor,
    secondary: AppDarkColors.secondaryColor,
    onSecondary: AppDarkColors.onSecondaryColor,
    tertiary: AppDarkColors.thirdColor,
    onTertiary: AppDarkColors.onThirdColor,
    error: Colors.red,
    onError: Colors.black,
    surface: AppDarkColors.surfaceColor,
    onSurface: AppDarkColors.onSurfaceColor,
  );

  static ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppLightColors.primaryColor,
    onPrimary: AppLightColors.onPrimaryColor,
    secondary: AppLightColors.secondaryColor,
    onSecondary: AppLightColors.onSecondaryColor,
    tertiary: AppLightColors.thirdColor,
    onTertiary: AppLightColors.onThirdColor,
    error: Colors.red,
    onError: Colors.black,
    surface: AppLightColors.surfaceColor,
    onSurface: AppLightColors.onSurfaceColor,
  );
}
