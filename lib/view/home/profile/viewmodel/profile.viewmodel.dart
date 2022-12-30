import 'package:flutter/material.dart';
import 'package:dietitian/core/constant/color_const.dart';

abstract class ProfileViewModel {
  Widget _userAvatar() {
    return const CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage('assets/images/profile.png'),
    );
  }

  Widget appBarContent() {
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
                'Serdem',
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
}

class AppbarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    Paint paint = Paint();
    Path path = Path();
    paint.shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [ColorConst.thirdBlue, ColorConst.secondBlue])
        .createShader(rect);
    path.lineTo(
      0,
      size.height - size.height / 7,
    );
    path.conicTo(size.width, size.height, size.width, size.height, 9);
    path.lineTo(size.width, 0);
    canvas.drawShadow(path, ColorConst.blackShadow, 4, false);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
