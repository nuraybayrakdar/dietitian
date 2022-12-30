import 'package:flutter/material.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';
import '../../core/constant/color_const.dart';
import '../../view/home/homePage/view/homepage_view.dart';

Widget sliderButton(BuildContext context) {
  return Positioned(
    top: MediaQuery.of(context).size.height / 1.60,
    left: MediaQuery.of(context).size.width / 6,
    width: MediaQuery.of(context).size.width / 1.5,
    height: 50,
    child: GradientSlideToAct(
      text: 'LOGIN',
      dragableIcon: Icons.arrow_forward,
      textStyle: const TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: ColorConst.secondBlue,
      onSubmit: () {
        Navigator.pop(context);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          colors: [ColorConst.secondBlue, ColorConst.darkBlue]),
    ),
  );
}
