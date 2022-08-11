import 'package:flutter/material.dart';
import 'package:portfolio/widgets/simple_triangle.dart';

class TriangleInfo extends StatelessWidget {
  final String text;
  const TriangleInfo({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        const SimpleTriangle(),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: text.substring(0, 1),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w100)),
              TextSpan(
                  text: text.substring(1),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w100)),
            ]),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
