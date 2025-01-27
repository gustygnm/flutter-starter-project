import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starter_project/core/configs/themes/palette.dart';
import 'package:flutter_starter_project/core/configs/themes/typography.dart';

class CustomTheme {
  static AppBarTheme appbarTHeme = AppBarTheme(
    elevation: 1,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    color: const Color(0xFFFFFFFF),
    titleTextStyle: MyTypography.headline6.copyWith(
      color: Palette.onBackground,
    ),
    iconTheme: const IconThemeData(
      color: Palette.onBackground,
    ),
    centerTitle: true,
  );

  static final inputDecorationTheme = InputDecorationTheme(
    filled: true,
    focusColor: Palette.primaryColor,
    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20),
    ),
    alignLabelWithHint: true,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.red, width: 0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: Colors.red, width: 0),
    ),
    hintStyle: const TextStyle(color: Colors.grey),
  );

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Palette.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static final outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Palette.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: const BorderSide(
        color: Palette.primaryColor,
      ),
      textStyle: MyTypography.button.copyWith(
        color: Palette.primaryColor,
      ),
    ),
  );

  static final outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Palette.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: const BorderSide(
        color: Palette.primaryColorLight,
      ),
      textStyle: MyTypography.button.copyWith(
        color: Palette.primaryColorLight,
      ),
    ),
  );

  static final textTheme = TextTheme(
    displayLarge: MyTypography.headline1,
    displayMedium: MyTypography.headline2,
    displaySmall: MyTypography.headline3,
    headlineMedium: MyTypography.headline4,
    headlineSmall: MyTypography.headline5,
    titleLarge: MyTypography.headline6,
    titleMedium: MyTypography.subtitle1,
    titleSmall: MyTypography.subtitle2,
    bodyLarge: MyTypography.bodyText1,
    bodyMedium: MyTypography.bodyText2,
    labelLarge: MyTypography.button,
    bodySmall: MyTypography.caption,
    labelSmall: MyTypography.overline,
  );

  static final lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: Palette.primaryColor,
    primaryColorDark: Palette.primaryColorDark,
    primaryColorLight: Palette.primaryColorLight,
    secondaryHeaderColor: Palette.secondaryColorDark,
    colorScheme: const ColorScheme(
      primary: Palette.primaryColor,
      secondary: Palette.secondary,
      surface: Palette.surface,
      error: Palette.error,
      onPrimary: Palette.onPrimary,
      onSecondary: Palette.onSecondary,
      onSurface: Palette.onSurface,
      onError: Palette.onError,
      brightness: Brightness.light,
    ),
    textTheme: textTheme,
    disabledColor: Colors.grey,
    dividerColor: Palette.divider.withOpacity(0.5),
    hintColor: Colors.grey,
    appBarTheme: appbarTHeme,
    inputDecorationTheme: inputDecorationTheme,
    iconTheme: const IconThemeData(
      color: Colors.black54,
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.only(bottom: 10),
      elevation: 6,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: elevatedButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
    buttonTheme: const ButtonThemeData(
      buttonColor: Palette.primaryColor,
      disabledColor: Colors.grey,
      splashColor: Colors.white,
      // textTheme: ButtonTextTheme.primary,
    ),
  );

  static final darkTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.grey[900],
    brightness: Brightness.dark,
    primaryColor: Palette.primaryColor,
    primaryColorDark: Palette.primaryColorDark,
    primaryColorLight: Palette.primaryColorLight,
    secondaryHeaderColor: Palette.secondaryColorDark,
    colorScheme: const ColorScheme(
      primary: Palette.primaryColorLight,
      secondary: Palette.secondary,
      surface: Palette.surfaceDark,
      error: Palette.error,
      onPrimary: Palette.onPrimary,
      onSecondary: Palette.onSecondary,
      onSurface: Palette.onSurfaceDark,
      onError: Palette.onError,
      brightness: Brightness.dark,
    ),
    disabledColor: Palette.disabledColor,
    dividerColor: Palette.divider.withOpacity(0.5),
    hintColor: Colors.grey,
    textTheme: textTheme,
    appBarTheme: appbarTHeme.copyWith(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.red,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      color: Colors.grey[900],
      titleTextStyle: MyTypography.headline6.copyWith(
        color: Palette.onBackgroundDark,
      ),
      iconTheme: const IconThemeData(
        color: Palette.onBackgroundDark,
      ),
    ),
    inputDecorationTheme:
        inputDecorationTheme.copyWith(fillColor: Colors.grey[800]),
    iconTheme: const IconThemeData(
      color: Palette.onBackgroundDark,
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.only(bottom: 10),
      elevation: 6,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: elevatedButtonTheme,
    outlinedButtonTheme: outlinedButtonThemeDark,
    buttonTheme: const ButtonThemeData(
      buttonColor: Palette.primaryColor,
      disabledColor: Colors.grey,
      splashColor: Colors.white,
    ),
  );
}
