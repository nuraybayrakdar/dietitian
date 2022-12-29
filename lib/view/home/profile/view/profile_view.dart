import 'package:dietitian/core/constant/color_const.dart';
import 'package:dietitian/product/widget/profile_textfield.dart';
import 'package:dietitian/view/home/profile/viewmodel/profile.viewmodel.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: AppbarPainter(), child: _appBarContent()),
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

  Widget _appBarContent() {
    return Container(
      height: 195,
      width: 400,
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          _userInfo()
        ],
      ),
    );
  }

  Widget _userInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _userAvatar(),
        const SizedBox(
          width: 50,
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              _userPersonalInfo(),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _userAvatar() {
    return const CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage('assets/images/profile.jpg'),
    );
  }

  Widget _userPersonalInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Melike',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: ColorConst.textColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: ColorConst.textColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Turkey, Istanbul',
                    style: TextStyle(
                        fontSize: 10,
                        letterSpacing: 2,
                        color: ColorConst.textColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
