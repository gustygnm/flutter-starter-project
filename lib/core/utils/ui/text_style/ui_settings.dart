import 'package:flutter/material.dart';
import 'package:flutter_starter_project/core/configs/themes/palette.dart';

class TextSettings {
  static TextStyle get headerMain => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );

  static TextStyle get header1 => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );

  static TextStyle get bodyMain => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 16,
      );

  static TextStyle get bodyMainBold => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get bodyMainBoldUnderline => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
      );

  static TextStyle get largeBodyMainBold => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get smallBodyMain => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 14,
      );

  static TextStyle get smallBodyMainBold => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get extraExtraSmallBodyWhite => const TextStyle(
        color: Colors.white,
        fontSize: 10,
      );

  static TextStyle get smallBodyWhite => const TextStyle(
        color: Colors.white,
        fontSize: 14,
      );

  static TextStyle get smallBodyMainUnderline => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 14,
        decoration: TextDecoration.underline,
      );

  static TextStyle get bodyInput => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 14,
      );

  static TextStyle get body1Regular => const TextStyle(
        color: Palette.primaryColor,
        fontSize: 16,
      );

  static TextStyle get body1Bold => const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get body1BoldLarge => const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get body1RegularSmall => const TextStyle(
        color: Colors.white,
        fontSize: 14,
      );

  static TextStyle get body2Bold => const TextStyle(
        color: Palette.colorGrey,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get body2Regular => const TextStyle(
        color: Palette.colorGrey,
        fontSize: 16,
      );

  static TextStyle get smallBody2Regular => const TextStyle(
        color: Palette.colorTextSecondary,
        fontSize: 14,
      );

  static TextStyle get body3 => const TextStyle(
        color:  Palette.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get body3Regular => const TextStyle(
        color:  Palette.primaryColor,
        fontSize: 16,
      );

  static TextStyle get errorMainBold => const TextStyle(
        color: Colors.red,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get errorMainRegular => const TextStyle(
        color: Colors.red,
        fontSize: 16,
      );

  static TextStyle get errorMainRegularSmall => const TextStyle(
        color: Colors.red,
        fontSize: 14,
      );

  static TextStyle get buttonMainBold => const TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get buttonMainRegular => const TextStyle(
        color: Colors.blue,
        fontSize: 16,
      );

  static TextStyle get buttonMainRegularSmall => const TextStyle(
        color: Colors.blue,
        fontSize: 14,
      );

  static TextStyle get headerSmallMain => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );

  static TextStyle get headlineMain => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );

  static TextStyle get headlineMainRegular => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );

  static TextStyle get headlineMainWhite => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      );

  static TextStyle get textRed12 => const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textWhite8 => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 8,
      );

  static TextStyle get textPrimary18 => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );

  static TextStyle get textWhite12 => const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textSecondary18 => const TextStyle(
        color: Palette.colorTextSecondary,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );

  static TextStyle get textPrimary16 => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  static TextStyle get textBlack16 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  static TextStyle get textBlackSemiBold16 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );

  static TextStyle get textBlackSemiBold32 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 32,
      );

  static TextStyle get textBlackSemiBold26 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 26,
      );

  static TextStyle get textBlackSemiBold12 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 12,
      );

  static TextStyle get textColorGreen16 => const TextStyle(
        color:  Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  static TextStyle get textColorGreenBold16 => const TextStyle(
        color:  Palette.primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 16,
      );

  static TextStyle get textBlack14 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textBlackSemiBold14 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );

  static TextStyle get textBlackBold14 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );

  static TextStyle get textBlackBoldItalic14 => const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 14,
        fontStyle: FontStyle.italic,
      );

  static TextStyle get textPrimary14 => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textPrimaryBold14 => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );

  static TextStyle get textColorPrimary14 => const TextStyle(
        color:  Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textColorPrimaryBold14 => const TextStyle(
        color:  Palette.primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );

  static TextStyle get textSecondary14 => const TextStyle(
        color: Palette.colorTextSecondary,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textSecondaryBold14 => const TextStyle(
        color: Palette.colorTextSecondary,
        fontWeight: FontWeight.w700,
        fontSize: 14,
      );

  static TextStyle get textDisabled14 => const TextStyle(
        color: Palette.colorTextDisabled,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textDisabled16 => const TextStyle(
        color: Palette.colorTextDisabled,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  static TextStyle get textPrimary12 => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textPrimary8 => const TextStyle(
        color: Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 8,
      );

  static TextStyle get textColorPrimary12 => const TextStyle(
        color:  Palette.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textSecondary12 => const TextStyle(
        color: Palette.colorTextSecondary,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textStyle10 => const TextStyle(
        color: Palette.colorTextSecondary,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );

  // region Mono
  static TextStyle get textPrimary18Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );

  static TextStyle get textBold18Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      );

  static TextStyle get textPrimary16Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );

  static TextStyle get textBold16Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );

  static TextStyle get textPrimary14Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textBold14Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      );

  static TextStyle get textPrimary12Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textPrimary12Mono80 => const TextStyle(
        color: Palette.colorTextMono80,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textPrimary14Mono80 => const TextStyle(
        color: Palette.colorTextMono80,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textPrimary12Mono70 => const TextStyle(
        color: Palette.colorTextMono70,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );

  static TextStyle get textPrimary14Mono70 => const TextStyle(
        color: Palette.colorTextMono70,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );

  static TextStyle get textRegular12Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.w400,
        fontSize: 12,
      );

  static TextStyle get textBold12Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      );

  static TextStyle get textPrimary10Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      );

  static TextStyle get textBold10Mono90 => const TextStyle(
        color: Palette.colorTextMono90,
        fontWeight: FontWeight.bold,
        fontSize: 10,
      );
// endregion Mono
}

class BorderSettings {
  static OutlineInputBorder get enabledBorder => OutlineInputBorder(
        borderSide: const BorderSide(
          color: Palette.colorGrey,
        ),
        borderRadius: BorderRadius.circular(50),
      );

  static OutlineInputBorder get textBorder => OutlineInputBorder(
        borderSide: const BorderSide(
          color: Palette.colorGrey,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(8),
      );

  static OutlineInputBorder get disabledBorder => OutlineInputBorder(
        borderSide: const BorderSide(
          color: Palette.colorGrey,
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(8),
      );
}

class PaddingSettings {
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 24);
  static const verticalPadding = EdgeInsets.symmetric(vertical: 20);
  static const allPadding = EdgeInsets.all(24);
}
