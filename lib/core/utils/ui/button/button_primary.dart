import 'package:flutter/material.dart';
import 'package:flutter_starter_project/core/configs/themes/palette.dart';
import 'package:flutter_starter_project/core/utils/ui/button/button_base.dart';

class ButtonPrimary extends ButtonBase {
  ButtonPrimary({
    super.key,
    required super.textValue,
    required this.onTapButton,
    this.isEnabledButton = true,
    this.radius = 10,
    this.btnHeight = 56,
    super.textSize,
    super.child,
  }) : super(
          bgColor: isEnabledButton == true
              ? Palette.buttonPrimary
              : Palette.buttonDisable,
          textColor: isEnabledButton == true
              ? Colors.white
              : Palette.buttonTextDisable,
          borderColor: isEnabledButton == true
              ? Palette.buttonPrimary
              : Palette.buttonDisable,
          onTap: isEnabledButton == true ? onTapButton : () {},
          cornerRadius: radius,
          height: btnHeight,
        );
  final bool isEnabledButton;
  final GestureTapCallback onTapButton;
  final double radius;
  final double btnHeight;
}
