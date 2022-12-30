import 'package:dietitian/core/constant/color_const.dart';
import 'package:dietitian/view/auth/splash/viewmodel/splash_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends SplashScreenViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConst.beigeSplash,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/animations/animation-splash.json',
              ),
              Text(
                'DIETITIAN',
                style: GoogleFonts.bebasNeue(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 25,
                  letterSpacing: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
