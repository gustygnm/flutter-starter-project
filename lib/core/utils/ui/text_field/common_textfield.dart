import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_starter_project/core/configs/themes/palette.dart';
import 'package:flutter_starter_project/core/utils/ui/container/containers.dart';

import 'package:flutter_starter_project/core/utils/ui/text_style/ui_settings.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.label,
    this.suffix,
    this.hint,
    this.suffixLabel,
    this.controller,
    required this.textInputType,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly,
    this.filled,
    this.focusNode,
    this.onTap,
    this.onChange,
    this.onComplete,
    this.validator,
    this.maxLine,
    this.maxLength,
    this.inputFormatter,
    this.autoValidateMode,
    this.isEnable = true,
  });

  final String label;
  final String? hint;
  final Widget? suffix;
  final String? suffixLabel;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  final bool? readOnly;
  final bool? filled;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String)? onChange;
  final Function()? onComplete;
  final String? Function(String?)? validator;
  final int? maxLine;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatter;
  final AutovalidateMode? autoValidateMode;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextSettings.textPrimary14.copyWith(color: Palette.colorBlack),
        ).bottomPadded(8),
        TextFormField(
          autovalidateMode: autoValidateMode,
          maxLength: maxLength,
          maxLines: maxLine,
          controller: controller,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: const Color(0xFF343434)),
          keyboardType: textInputType,
          textInputAction: textInputAction,
          readOnly: readOnly ?? false,
          onTap: onTap,
          focusNode: focusNode,
          onChanged: onChange,
          onEditingComplete: onComplete,
          decoration: InputDecoration(
            filled: readOnly ?? false,
            fillColor: isEnable ? Palette.white : Palette.greyLightFour,
            counterText: '',
            hintText: hint,

            /// hintStyle: FontFamily.manrope(color: colorTextDisabled,
            /// fontWeight:
            /// FontWeight.w400, fontSize: 14,),
            prefixIcon: prefixIcon,
            suffix: suffixLabel != null
                ? Text(
                    '$suffixLabel',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Palette.greyFour),
                  )
                : null,
            suffixIcon: suffixIcon,
            labelText: label.isNotEmpty == true ? null : label,
            labelStyle: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Palette.greyTwo, fontSize: 14),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Palette.borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          inputFormatters: inputFormatter,
          validator: validator,
        ),
      ],
    );
  }
}
