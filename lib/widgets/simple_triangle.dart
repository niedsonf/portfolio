import 'dart:math' as math;

import 'package:flutter/material.dart';

class SimpleTriangle extends StatefulWidget {
  const SimpleTriangle({super.key});
  @override
  State<SimpleTriangle> createState() => _SimpleTriangleState();
}

class _SimpleTriangleState extends State<SimpleTriangle> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 3,
      child: ClipPath(
        clipper: ClipHome(),
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              color: const Color(0xFF3B3A4D),
              width: 50,
              height: 50 * math.sin(1.0472),
            ),
            CustomPaint(
              painter: BorderPainter(),
            )
          ],
        ),
      ),
    );
  }
}

class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(50, 0); //posição de x= 0  e y = o valor máximo

    path.lineTo(50 * math.cos(1.0472),
        50 * math.sin(1.0472)); //posição de x= o valor máximo e y = 0
    path.lineTo(0, 0); //posição de x= o valor máximo e y = 0
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = Colors.pink;
    Path path = Path();
//    uncomment this and will get the border for all lines
    path.lineTo(50, 0); //posição de x= 0  e y = o valor máximo

    path.lineTo(50 * math.cos(1.0472),
        50 * math.sin(1.0472)); //posição de x= o valor máximo e y = 0
    path.lineTo(0, 0); //posição de x= o valor máximo e y = 0
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
