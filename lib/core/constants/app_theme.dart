// Importing necessary packages and modules
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Importing the AppColors class
import 'app_colors.dart';

// Defining a class named AppTheme
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  // Defining the light theme
  static final ThemeData light = ThemeData(
    // Setting the font family
    fontFamily: 'SF Pro Display',
    // Setting the brightness to light
    brightness: Brightness.light,
    // Enabling Material 3
    useMaterial3: true,
    // Setting the primary color
    primaryColor: AppColors.primary,

    // Defining the theme for FloatingActionButton
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      // Setting the background color
      backgroundColor: AppColors.primary,
      // Setting the foreground color
      foregroundColor: AppColors.white,
      // Setting the elevation
      elevation: 10,
      // Setting the shape
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    // Defining the text theme
    textTheme: const TextTheme(
      // Defining the style for large body text
      bodyLarge: TextStyle(color: AppColors.black, fontSize: 16),
      // Defining the style for medium body text
      bodyMedium: TextStyle(color: AppColors.black,fontSize: 14),
      // Defining the style for small body text
      bodySmall: TextStyle(color: AppColors.black, fontSize: 12),
      // Defining the style for large headlines
      headlineLarge: TextStyle(color: AppColors.black, fontSize: 24,fontWeight: FontWeight.bold),
      // Defining the style for medium headlines
      headlineMedium: TextStyle(color: AppColors.black, fontSize: 20,fontWeight: FontWeight.bold),
      // Defining the style for small headlines
      headlineSmall: TextStyle(color: AppColors.black, fontSize: 16,fontWeight: FontWeight.bold),
    ),
    // Defining the theme for ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // Setting the background color
        backgroundColor: AppColors.primary,
        // Setting the shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        // Setting the padding
        padding:  EdgeInsets.symmetric(vertical:16.w , horizontal: 80.w),
        // Setting the text style
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
    ),
    // Defining the theme for BottomSheet
    bottomSheetTheme: const BottomSheetThemeData(
      // Setting the background color
      backgroundColor: AppColors.white,
      // Setting the surface tint color
      surfaceTintColor: AppColors.greyDark,
    ),
    // Setting the scaffold background color
    scaffoldBackgroundColor: AppColors.offWhite,
    // Defining the color scheme
    colorScheme: const ColorScheme.light().copyWith(
      // Setting the primary color
      primary: AppColors.primary,
      // Setting the secondary color
      secondary: AppColors.accent,
      // Setting the background color
      background: AppColors.offWhite,
      // Setting the surface color
      surface: AppColors.white,
      // Setting the color for text and icons on top of the surface color
      onSurface: AppColors.greyDark,
      // Setting the color for text and icons on top of the secondary container color
      onSecondaryContainer: AppColors.whiteGrey,
    ),
  );

  // Defining the dark theme
  static final ThemeData dark = ThemeData(
    // Setting the font family
    fontFamily: 'SF Pro Display',
    // Enabling Material 3
    useMaterial3: true,
    // Setting the brightness to dark
    brightness: Brightness.dark,
    // Setting the primary color
    primaryColor: AppColors.primary,
    // Defining the theme for ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // Setting the background color
        backgroundColor: AppColors.primaryDark,
        // Setting the shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        // Setting the padding
        padding:  EdgeInsets.symmetric(vertical:16.w , horizontal: 80.w),
        // Setting the text style
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    ),
    // Defining the theme for BottomSheet
    bottomSheetTheme: const BottomSheetThemeData(
      // Setting the background color
      backgroundColor: AppColors.black,
      // Setting the surface tint color
      surfaceTintColor: AppColors.offWhiteDark,
    ),
    // Defining the text theme
    textTheme: const TextTheme(
      // Defining the style for large body text
      bodyLarge: TextStyle(color: AppColors.lightGrey, fontSize: 16),
      // Defining the style for medium body text
      bodyMedium: TextStyle(color: AppColors.lightGrey,fontSize: 14),
      // Defining the style for small body text
      bodySmall: TextStyle(color: AppColors.lightGrey, fontSize: 12),
      // Defining the style for large headlines
      headlineLarge: TextStyle(color: AppColors.white, fontSize: 24,fontWeight: FontWeight.bold),
      // Defining the style for medium headlines
      headlineMedium: TextStyle(color: AppColors.white, fontSize: 20,fontWeight: FontWeight.bold),
      // Defining the style for small headlines
      headlineSmall: TextStyle(color: AppColors.white, fontSize: 16,fontWeight: FontWeight.bold),
    ),
    // Defining the color scheme
    colorScheme: const ColorScheme.dark().copyWith(
      // Setting the primary color
      primary: AppColors.primaryDark,
      // Setting the secondary color
      secondary: AppColors.accentDark,
      // Setting the surface color
      surface: AppColors.black,
      // Setting the background color
      background: AppColors.black,
      // Setting the color for text and icons on top of the surface color
      onSurface: AppColors.lightBlack,
      // Setting the color for text and icons on top of the secondary container color
      onSecondaryContainer: AppColors.lighterBlack,
    ),
  );
}