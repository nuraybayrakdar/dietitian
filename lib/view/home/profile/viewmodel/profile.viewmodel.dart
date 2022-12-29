import 'package:flutter/material.dart';
import 'package:dietitian/core/constant/color_const.dart';

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
