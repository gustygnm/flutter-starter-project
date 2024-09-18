import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:flutter_starter_project/core/configs/themes/palette.dart';

Widget dividerPrimary({
  Color color = Palette.divider,
  double height = 8.0,
}) {
  return Container(
    height: height,
    width: double.infinity,
    color: color,
  );
}

Future<void> showConfirmationDialog({
  required BuildContext context,
  required String message,
  String? title,
  DialogType? dialogType,
}) async {
  await AwesomeDialog(
    context: context,
    dialogType: dialogType ?? DialogType.error,
    animType: AnimType.bottomSlide,
    title: title,
    desc: message,
    btnOkOnPress: () {},
  ).show();
}

Widget containerBottomWithShadowTopWidget({required Widget child}) {
  return Container(
    decoration: BoxDecoration(
      border:
          const Border(top: BorderSide(color: Color(0xFFE2E3E4), width: 0.5)),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          offset: const Offset(0, 1),
          blurRadius: 5,
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    ),
    width: double.infinity,
    alignment: Alignment.bottomCenter,
    child: child,
  );
}

Widget containerTopWithShadowBottomWidget({required Widget child}) {
  return Container(
    decoration: BoxDecoration(
      border: const Border(
          bottom: BorderSide(color: Color(0xFFE2E3E4), width: 0.5)),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          offset: const Offset(0, 1),
          blurRadius: 5,
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    ),
    width: double.infinity,
    alignment: Alignment.bottomCenter,
    child: child,
  );
}

Widget containerTopWithShadowBottomType2Widget({required Widget child}) {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        Container(
          width: double.infinity,
          height: 1.5,
          color: Palette.disabledColor.withOpacity(0.6),
        ),
      ],
    ),
  );
}

Widget containerBottomWithShadowTopType2Widget({required Widget child}) {
  return Container(
    color: Colors.white,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 1.5,
          color: Palette.disabledColor.withOpacity(0.6),
        ),
        child,
      ],
    ),
  );
}

Widget containerBottomWithShadowTopType3Widget({required Widget child}) {
  return Container(
    decoration: BoxDecoration(
      border: const Border(
        top: BorderSide(
          color: Color(0xFFE2E3E4),
          width: 0.5,
        ),
      ),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          offset: const Offset(0, -5),
          blurRadius: 4,
          color: Colors.black.withOpacity(0.3),
        ),
      ],
    ),
    width: double.infinity,
    alignment: Alignment.bottomCenter,
    child: child,
  );
}

extension PaddedWidget on Widget {
  Widget topPadded4([EdgeInsets value = const EdgeInsets.only(top: 4)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget topPadded12([EdgeInsets value = const EdgeInsets.only(top: 12)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget topPadded16([EdgeInsets value = const EdgeInsets.only(top: 16)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget topPadded20([EdgeInsets value = const EdgeInsets.only(top: 20)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget topPadded30([EdgeInsets value = const EdgeInsets.only(top: 30)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget topPadded40([EdgeInsets value = const EdgeInsets.only(top: 40)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded24(
          [EdgeInsets value = const EdgeInsets.only(bottom: 24)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded20(
          [EdgeInsets value = const EdgeInsets.only(bottom: 20)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded16(
          [EdgeInsets value = const EdgeInsets.only(bottom: 16)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded12(
          [EdgeInsets value = const EdgeInsets.only(bottom: 12)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded8([EdgeInsets value = const EdgeInsets.only(bottom: 8)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded4([EdgeInsets value = const EdgeInsets.only(bottom: 4)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded6([EdgeInsets value = const EdgeInsets.only(bottom: 6)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget bottomPadded2([EdgeInsets value = const EdgeInsets.only(bottom: 2)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget padded16([EdgeInsets value = const EdgeInsets.all(16)]) => Padding(
        padding: value,
        child: this,
      );

  Widget verticalpadded16([
    EdgeInsets value = const EdgeInsets.symmetric(vertical: 16),
  ]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget horizontalpadded16([
    EdgeInsets value = const EdgeInsets.symmetric(horizontal: 16),
  ]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget withoutTopPadded16(
          [EdgeInsets value = const EdgeInsets.only(
            bottom: 16,
            left: 16,
            right: 16,
          )]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget padded8([EdgeInsets value = const EdgeInsets.all(8)]) => Padding(
        padding: value,
        child: this,
      );

  Widget leftPadded16([EdgeInsets value = const EdgeInsets.only(left: 16)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget leftPadded14([EdgeInsets value = const EdgeInsets.only(left: 14)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget leftPadded8([EdgeInsets value = const EdgeInsets.only(left: 8)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget leftPadded4([EdgeInsets value = const EdgeInsets.only(left: 4)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded14([EdgeInsets value = const EdgeInsets.only(right: 14)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded12([EdgeInsets value = const EdgeInsets.only(right: 12)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded20([EdgeInsets value = const EdgeInsets.only(right: 20)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded45([EdgeInsets value = const EdgeInsets.only(right: 45)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded16([EdgeInsets value = const EdgeInsets.only(right: 16)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded10([EdgeInsets value = const EdgeInsets.only(right: 10)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded8([EdgeInsets value = const EdgeInsets.only(right: 8)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded6([EdgeInsets value = const EdgeInsets.only(right: 6)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget rightPadded4([EdgeInsets value = const EdgeInsets.only(right: 4)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget sliderPadded20(
          [EdgeInsets value = const EdgeInsets.only(right: 20, left: 20)]) =>
      Padding(
        padding: value,
        child: this,
      );

  Widget padded([num value = 16]) => Padding(
        padding: EdgeInsets.all(value.toDouble()),
        child: this,
      );

  Widget paddedWithoutBottom([num value = 16]) => Padding(
        padding: EdgeInsets.only(
          left: value.toDouble(),
          right: value.toDouble(),
          top: value.toDouble(),
        ),
        child: this,
      );

  Widget paddedLTRB({
    double left = 16,
    double top = 16,
    double right = 16,
    double bottom = 16,
  }) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Widget topPadded([num value = 16]) => Padding(
        padding: EdgeInsets.only(top: value.toDouble()),
        child: this,
      );

  Widget bottomPadded([num value = 16]) => Padding(
        padding: EdgeInsets.only(bottom: value.toDouble()),
        child: this,
      );

  Widget rightPadded([num value = 16]) => Padding(
        padding: EdgeInsets.only(right: value.toDouble()),
        child: this,
      );

  Widget leftPadded([num value = 16]) => Padding(
        padding: EdgeInsets.only(left: value.toDouble()),
        child: this,
      );

  Widget horizontalPadded([num value = 16]) => Padding(
        padding: EdgeInsets.symmetric(horizontal: value.toDouble()),
        child: this,
      );

  Widget verticalPadded([num value = 16]) => Padding(
        padding: EdgeInsets.symmetric(vertical: value.toDouble()),
        child: this,
      );
}
