import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  const TypingText({Key? key}) : super(key: key);

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Hello!",
            style: TextStyle(
                fontSize: 38, color: Colors.pink, fontWeight: FontWeight.w600)),
        const Text("My name is Niedson Fernandes",
            style: TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontWeight: FontWeight.w100)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 180,
              height: 50,
              child: Text("and I love",
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w100)),
            ),
            SizedBox(
              height: 50,
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 38,
                    color: Colors.pink,
                    fontWeight: FontWeight.w300),
                child: AnimatedTextKit(
                    pause: const Duration(seconds: 0),
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText('Flutter'),
                      RotateAnimatedText('Discord'),
                      RotateAnimatedText('3D Printing'),
                      RotateAnimatedText('Technology'),
                    ]),
              ),
            )
          ],
        )
      ],
    );
  }
}
