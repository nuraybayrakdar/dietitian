import 'package:flutter/material.dart';
import 'package:dietitian/core/constant/color_const.dart';

Widget textfield({
  @required info,
  @required height,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Material(
      color: ColorConst.thirdBlue,
      elevation: 10,
      shadowColor: ColorConst.blackShadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: height,
        child: Center(
          child: Text(
            info,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(color: ColorConst.textColor),
          ),
        ),
      ),
    ),
  );
}
