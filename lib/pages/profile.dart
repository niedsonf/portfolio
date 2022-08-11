import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Row(
                  children: [
                    const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('assets/foto.jpeg')),
                    Expanded(
                      child: Column(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 300,
                                child: AnimatedTextKit(
                                    totalRepeatCount: 1,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                          'Junior Flutter Developer',
                                          textStyle: const TextStyle(
                                              color: Colors.pink,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w100),
                                          speed:
                                              const Duration(milliseconds: 100))
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
                                              fontSize: 22,
                                              fontWeight: FontWeight.w100),
                                          speed:
                                              const Duration(milliseconds: 100))
                                    ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const TriangleInfo(
                    text:
                        'Mechatronic Technician at Federal Institute of Rio Grande do Norte'),
                const TriangleInfo(
                    text:
                        'Undergraduate in Science and Technology at Federal University of Rio Grande do Norte'),
                const TriangleInfo(text: '2 year learning Flutter'),
              ])),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
