import 'package:architecture_template/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_template/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkScheme,
        fontFamily: GoogleFonts.roboto().fontFamily,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      const FloatingActionButtonThemeData();
}
