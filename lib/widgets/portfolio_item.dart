import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/widgets/stadium_button.dart';

class PortfolioItem extends StatefulWidget {
  const PortfolioItem({Key? key}) : super(key: key);

  @override
  State<PortfolioItem> createState() => _PortfolioItemState();
}

class _PortfolioItemState extends State<PortfolioItem>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;
  late Animation<Offset> textOffsetAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    offsetAnimation = Tween<Offset>(
            begin: const Offset(0, 0), end: const Offset(0.03, -0.03))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    textOffsetAnimation = Tween<Offset>(
            begin: const Offset(-0.05, 0), end: const Offset(0, 0))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: animationController, curve: const Interval(0, 1)));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isHovering = false;
    return Row(
      children: [
        const SizedBox(width: 30),
        InkWell(
          onTap: () {},
          onHover: (value) {
            value
                ? animationController.forward()
                : animationController.reverse();
          },
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: pink, borderRadius: BorderRadius.circular(4)),
            child: SlideTransition(
              position: offsetAnimation,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink),
                  borderRadius: BorderRadius.circular(4),
                  color: darker,
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Stack(
                          children: const [
                            Align(
                              alignment: AlignmentDirectional.topCenter,
                              child: Text(
                                'MvPlus+',
                                style: TextStyle(
                                    fontSize: 26,
                                    letterSpacing: 1.5,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          ],
                        )),
                    Expanded(
                        child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF424757),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StadiumButton(
                              text: 'Try it!',
                              icon: FontAwesomeIcons.play,
                              onPressed: () {}),
                          StadiumButton(
                              text: 'Repository',
                              icon: FontAwesomeIcons.github,
                              onPressed: () {}),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: FadeTransition(
              opacity: fadeAnimation,
              child: SlideTransition(
                position: textOffsetAnimation,
                child: const Text(
                  "Web tool for Ragnarok Online players. It's a interactive database of bosses, with detailed filters to search specific bosses and see it's weakness, local spawn and even set a timer for dominate it's respawn, also there's the possibility to create your own favorite list.",
                  style: TextStyle(color: Colors.pink, fontSize: 15),
                  overflow: TextOverflow.clip,
                  softWrap: true,
                ),
              )),
        )
      ],
    );
  }
}
