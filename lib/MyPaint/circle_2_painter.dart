import 'package:flutter/material.dart';

class Circle2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xFFE8D4FF)
      ..style = PaintingStyle.fill;

    Paint paint1 = Paint()
      ..color = const Color(0xFFE8D4FF)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(size.width * 3 / 4, size.height * 3 / 4),
        0.4 * size.height, paint1);

    canvas.drawCircle(Offset(0.015 * size.width, 0), 0.4 * size.height, paint);
  }

  @override
  bool shouldRepaint(Circle2Painter oldDelegate) => false;
}
