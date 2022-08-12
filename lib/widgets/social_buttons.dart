import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widgets/stadium_button.dart';

class SocialButton {
  final String text;
  final IconData icon;
  final Function() onTap;

  SocialButton({required this.text, required this.icon, required this.onTap});
}

List<SocialButton> socialContent = [
  SocialButton(text: 'Discord', icon: FontAwesomeIcons.discord, onTap: () {}),
  SocialButton(text: 'Github', icon: FontAwesomeIcons.github, onTap: () {}),
  SocialButton(text: 'Linkedin', icon: FontAwesomeIcons.linkedin, onTap: () {}),
];

class SocialButtons extends StatefulWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  State<SocialButtons> createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    offsetAnimation = Tween<Offset>(
            begin: const Offset(0, -0.5), end: const Offset(0, 0))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SlideTransition(
          position: offsetAnimation,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/foto.jpeg'),
              radius: 50,
            ),
          ),
        ),
        ...socialContent.map((e) => SlideTransition(
              position: offsetAnimation,
              child: FadeTransition(
                opacity: fadeAnimation,
                child: StadiumButton(
                    text: e.text, icon: e.icon, onPressed: e.onTap),
              ),
            ))
      ],
    );
  }
}
