import 'package:animated_text_kit/animated_text_kit.dart';
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
            child: DefaultTextStyle(
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100),
                child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    animatedTexts: [TypewriterAnimatedText(text)]))),
      ],
    );
  }
}
