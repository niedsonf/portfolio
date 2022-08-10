import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/widgets/bubbles/bubble_effect.dart';
import 'package:portfolio/widgets/radial_menu.dart';
import 'package:portfolio/widgets/stadium_button.dart';
import 'package:portfolio/widgets/typing_text.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
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
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TypingText(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StadiumButton(
                            text: 'Checkout my CV',
                            icon: Icons.label_important,
                            onPressed: () {}),
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
                                color: Colors.white,
                                fontWeight: FontWeight.w100)),
                        TextSpan(
                            text: 'Flutter',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w100)),
                      ]),
                    )
                  ],
                )),
                const Expanded(
                    child: Align(
                        alignment: AlignmentDirectional.center,
                        child: RadialMenu()))
              ],
            )
          ],
        ),
      ),
    );
  }
}
