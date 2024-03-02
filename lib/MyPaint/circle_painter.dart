import 'package:flutter/material.dart';

class CircPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint1 = Paint()
      ..color = const Color(0xFFE8D4FF)
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width * 0.9, size.height * 4 / 5),
        0.42 * size.height, paint1);
  }

  @override
  bool shouldRepaint(CircPainter oldDelegate) => false;
}
