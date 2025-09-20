import 'package:banking_app/core/utils/styles/responsive_font_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle _baseCairo(BuildContext context) => GoogleFonts.poppins();

  static TextStyle styleSemiBold26(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: ResponsiveFont.responsiveFontSize(context, 26),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular14(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSecondary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 14),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular12(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSecondary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 12),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular24(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 24),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular13(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 13),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular9(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSecondary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 10.5),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular11(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: const Color(0XFFFFFFFF),
        fontSize: ResponsiveFont.responsiveFontSize(context, 11),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular18(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: const Color(0XFFA2A2A7),
        fontSize: ResponsiveFont.responsiveFontSize(context, 18),
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBold16(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 16),
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleMeduim32(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: ResponsiveFont.responsiveFontSize(context, 32),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMeduim26(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: ResponsiveFont.responsiveFontSize(context, 26),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMeduim14(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.primary,
        fontSize: ResponsiveFont.responsiveFontSize(context, 14),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMeduim16(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: ResponsiveFont.responsiveFontSize(context, 16),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMeduim18(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: ResponsiveFont.responsiveFontSize(context, 18),
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMeduim17(BuildContext context) =>
      _baseCairo(context).copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: ResponsiveFont.responsiveFontSize(context, 17),
        fontWeight: FontWeight.w500,
      );
}
