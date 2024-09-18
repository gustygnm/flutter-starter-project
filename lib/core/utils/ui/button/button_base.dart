import 'package:flutter/material.dart';

abstract class ButtonBase extends StatelessWidget {
  const ButtonBase({
    Key? key,
    required this.textValue,
    required this.onTap,
    required this.bgColor,
    required this.textColor,
    required this.borderColor,
    this.cornerRadius = 10,
    this.height = 56,
    this.child,
    this.textSize,
  }) : super(key: key);
  final String textValue;
  final GestureTapCallback onTap;
  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  final double cornerRadius;
  final double height;
  final double? textSize;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Material(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(cornerRadius),
        ),
        color: bgColor,
        child: InkWell(
          onDoubleTap: () {},
          onTap: onTap,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: Center(
            child: child ??
                Text(
                  textValue,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6,
                    fontSize: textSize ?? 16,
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
