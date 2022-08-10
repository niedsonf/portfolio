import 'dart:math';

import 'package:flutter/material.dart';

class TriangleWidget extends StatefulWidget {
  final String text;
  final IconData icon;

  const TriangleWidget({super.key, required this.text, required this.icon});
  @override
  State<TriangleWidget> createState() => _TriangleWidgetState();
}

class _TriangleWidgetState extends State<TriangleWidget> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ClipHome(),
      child: InkWell(
        onTap: () {},
        onHover: (value) {
          setState(() {
            isHovering = value;
          });
        },
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 150,
              height: 150 * sin(1.0472),
              decoration: BoxDecoration(
                color: !isHovering
                    ? const Color(0xFF3B3A4D)
                    : const Color(0xFF424757),
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 150 * sin(1.0472) / 2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(widget.text,
                        style: const TextStyle(color: Colors.pink)),
                    Icon(
                      widget.icon,
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
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

    path.lineTo(150, 0); //posição de x= 0  e y = o valor máximo

    path.lineTo(150 * cos(1.0472),
        150 * sin(1.0472)); //posição de x= o valor máximo e y = 0
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
    path.lineTo(150, 0); //posição de x= 0  e y = o valor máximo

    path.lineTo(150 * cos(1.0472),
        150 * sin(1.0472)); //posição de x= o valor máximo e y = 0
    path.lineTo(0, 0); //posição de x= o valor máximo e y = 0
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
