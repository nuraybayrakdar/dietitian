import 'dart:async';

import 'package:dietitian/view/auth/login/view/login_view.dart';
import 'package:dietitian/view/home/homePage/view/homepage_view.dart';
import 'package:flutter/material.dart';

import '../view/splash_view.dart';

abstract class SplashScreenViewModel extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginView())));
  }
}
