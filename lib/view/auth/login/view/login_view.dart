import 'dart:ui';
import 'package:dietitian/product/widget/login_button_slide.dart';
import 'package:dietitian/view/auth/login/viewmodel/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../../../product/widget/login_textfield.dart';

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
                    width: 160,
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
          sliderButton(context),
        ],
      ),
    );
  }
}
