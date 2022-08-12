import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/widgets/social_buttons.dart';
import 'package:portfolio/widgets/triangle_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darker,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SocialButtons(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 350,
                        child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText('Niedson Fernandes',
                                  textStyle: const TextStyle(
                                      color: Colors.white, fontSize: 32),
                                  speed: const Duration(milliseconds: 100))
                            ]),
                      ),
                      SizedBox(
                        width: 150,
                        child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText('23 years',
                                  textStyle: const TextStyle(
                                      color: Colors.pink,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100),
                                  speed: const Duration(milliseconds: 100))
                            ]),
                      ),
                      SizedBox(
                        width: 300,
                        child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText('Flutter Developer',
                                  textStyle: const TextStyle(
                                      color: Colors.pink,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100),
                                  speed: const Duration(milliseconds: 100))
                            ]),
                      ),
                      SizedBox(
                        width: 400,
                        child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText('Mechatronic Technician',
                                  textStyle: const TextStyle(
                                      color: Colors.pink,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100),
                                  speed: const Duration(milliseconds: 100))
                            ]),
                      ),
                      SizedBox(
                        width: 400,
                        child: AnimatedTextKit(
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  'Undergraduate in Science and Technology',
                                  textStyle: const TextStyle(
                                      color: Colors.pink,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w100),
                                  speed: const Duration(milliseconds: 100))
                            ]),
                      ),
                    ],
                  ),
                  const TriangleInfo(
                      text:
                          'Mechatronic Technician at Federal Institute of Rio Grande do Norte'),
                  const TriangleInfo(
                      text:
                          'Undergraduate in Science and Technology at Federal University of Rio Grande do Norte'),
                  const TriangleInfo(text: '2 year learning Flutter'),
                ]),
          )),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
