import 'package:flutter/material.dart';

import '../../core/constant/color_const.dart';

Widget fistNameField(BuildContext context, String labelText, double top,
    TextEditingController? controller) {
  return Positioned(
    width: MediaQuery.of(context).size.width / 1.5,
    height: 50,
    left: MediaQuery.of(context).size.width / 6,
    top: top,
    child: TextField(
      onChanged: (value) {
        //.....
      },
      maxLines: 1,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.black,
          ),
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        labelText: labelText,
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black.withOpacity(0.9),
              fontWeight: FontWeight.w500,
            ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.1,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: ColorConst.darkBlue,
            width: 3,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConst.darkBlue,
            width: 1.1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
      ),
    ),
  );
}
