import 'dart:ui';
import 'package:dietitian/core/constant/color_const.dart';
import 'package:dietitian/view/auth/login/viewmodel/login_viewmodel.dart';
import 'package:dietitian/view/home/homePage/view/homepage_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_slide_to_act/gradient_slide_to_act.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends LoginViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Lottie.asset(
              fit: BoxFit.contain,
              'assets/animations/background-2.json',
              repeat: true,
            ),
          ),
          Positioned.fill(
            left: 20,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 20,
              ),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: 60,
                right: MediaQuery.of(context).size.width / 3,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 180,
                    child: Column(
                      children: [
                        Text(
                          'Stay healthy & live',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Lottie.asset(
              alignment: Alignment.bottomLeft,
              repeat: true,
              'assets/animations/login-bottom.json',
            ),
          ),
          Positioned(
            child: Lottie.asset(
              alignment: Alignment.topRight,
              repeat: true,
              'assets/animations/login-anim.json',
            ),
          ),
          fistNameField(context, 'Last Name',
              MediaQuery.of(context).size.height / 1.9, controller2),
          fistNameField(context, 'First Name',
              MediaQuery.of(context).size.height / 2.3, controller),
          Positioned(
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
          )
        ],
      ),
    );
  }
}
