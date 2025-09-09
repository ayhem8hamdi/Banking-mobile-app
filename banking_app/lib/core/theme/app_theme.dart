import 'package:banking_app/core/theme/colors/dark_colors.dart';
import 'package:banking_app/core/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ThemeColorScheme.lightColorScheme,
    inputDecorationTheme: AppTheme.buildInputDecorationTheme(
      cs: ThemeColorScheme.lightColorScheme,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ThemeColorScheme.darkColorScheme,
    inputDecorationTheme: AppTheme.buildInputDecorationTheme(
      cs: ThemeColorScheme.darkColorScheme,
    ),
  );

  static InputDecorationTheme buildInputDecorationTheme({
    required ColorScheme cs,
  }) {
    return InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 13.6,
        color: cs.onSurface.withOpacity(0.6),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
      border: UnderlineInputBorder(borderSide: BorderSide(color: cs.secondary)),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: cs.primary, width: 2),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: cs.secondary),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: cs.secondary),
      ),
      filled: true,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
    );
  }
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
    outline: AppDarkColors.lineColor,
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
    outline: AppLightColors.lineColor,
  );
}
