import 'package:dietitian/product/widget/profile_textfield.dart';
import 'package:dietitian/view/home/profile/viewmodel/profile.viewmodel.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget with ProfileViewModel {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: AppbarPainter(), child: appBarContent()),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: screenWidth,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textfield(info: 'Username', height: screenWidth / 8),
                    textfield(info: 'Email', height: screenWidth / 8),
                    textfield(info: 'Tel Number', height: screenWidth / 8),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
