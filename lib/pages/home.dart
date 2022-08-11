import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/widgets/bubbles/bubble_effect.dart';
import 'package:portfolio/widgets/stadium_button.dart';
import 'package:portfolio/widgets/typing_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [purple, pink],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd)),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          const BubblesEffect(),
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TypingText(),
                    Row(
                      children: [
                        StadiumButton(
                            text: 'Checkout my CV',
                            icon: Icons.label_important,
                            onPressed: () {}),
                        const SizedBox(width: 50),
                        StadiumButton(
                            text: 'Contact me',
                            icon: Icons.discord,
                            onPressed: () {}),
                      ],
                    ),
                    const Text.rich(
                      TextSpan(children: [
                        TextSpan(
                            text:
                                'Made with ❤ in Natal/RN, Brazil and powered by ',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w100)),
                        TextSpan(
                            text: 'Flutter',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.w100)),
                      ]),
                    )
                  ],
                ),
              )),
              Expanded(child: Container())
            ],
          )
        ],
      ),
    );
  }
}
