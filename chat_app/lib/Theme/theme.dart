import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSize {
  static const small = 12.0;
  static const standard = 14.0;
  static const standardUp = 16.0;
  static const medium = 20.0;
  static const large = 28.0;
}

class DefaultColors {
  static const Color greyText = Color(0xFF8E8E93);
  static const Color whiteText = Color(0xFFFAFAFA);
  static const Color senderMessage = Color(0xFF0084FF);
  static const Color receiveMessage = Color(0xFF34C759);
  static const Color senderMessageInput = Color(0xFFE8E8E8);
  static const Color messagListPage = Color(0xFF1C1C1E);
  static const Color buttonColor = Color(0xFF007AFF);

  // Additional colors for dark theme
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkDivider = Color(0xFF2C2C2E);
  static const Color darkInputBorder = Color(0xFF3A3A3C);
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: DefaultColors.darkBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: DefaultColors.darkSurface,
        foregroundColor: DefaultColors.whiteText,
        elevation: 0,
      ),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.sigmar(
          fontSize: FontSize.medium,
          color: DefaultColors.whiteText,
        ),
        titleLarge: GoogleFonts.dancingScript(
          fontSize: FontSize.large,
          color: DefaultColors.whiteText,
        ),
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: FontSize.standardUp,
          color: DefaultColors.whiteText,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: FontSize.standardUp,
          color: DefaultColors.whiteText,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DefaultColors.darkSurface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: DefaultColors.darkInputBorder),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: DefaultColors.darkInputBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: DefaultColors.buttonColor),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DefaultColors.buttonColor,
          foregroundColor: DefaultColors.whiteText,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: DefaultColors.darkDivider,
        thickness: 1,
      ),
      colorScheme: ColorScheme.dark(
        primary: DefaultColors.buttonColor,
        secondary: DefaultColors.senderMessage,
        surface: DefaultColors.darkSurface,
        background: DefaultColors.darkBackground,
        error: Colors.red.shade700,
        onPrimary: DefaultColors.whiteText,
        onSecondary: DefaultColors.whiteText,
        onSurface: DefaultColors.whiteText,
        onBackground: DefaultColors.whiteText,
        onError: DefaultColors.whiteText,
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: DefaultColors.buttonColor,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.sigmar(
          fontSize: FontSize.medium,
          color: Colors.black,
        ),
        titleLarge: GoogleFonts.dancingScript(
          fontSize: FontSize.large,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: FontSize.standardUp,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: FontSize.standardUp,
          color: Colors.black,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: DefaultColors.senderMessageInput,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: DefaultColors.buttonColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}