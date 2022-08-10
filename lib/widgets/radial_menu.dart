import 'package:flutter/material.dart';
import 'package:portfolio/widgets/triangle_widget.dart';

class RadialMenu extends StatefulWidget {
  const RadialMenu({Key? key}) : super(key: key);

  @override
  State<RadialMenu> createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu> with TickerProviderStateMixin {
  late AnimationController menuAnimationController;
  late Animation<double> topRotateAnimation;
  late Animation<double> leftRotateAnimation;
  late Animation<double> rightRotateAnimation;
  late Animation<double> opacityAnimation;
  late Animation<Offset> topMoveAnimation;
  late Animation<Offset> leftMoveAnimation;
  late Animation<Offset> rightMoveAnimation;

  @override
  void initState() {
    menuAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    topRotateAnimation = Tween<double>(begin: -2 * 60 / 360, end: 0).animate(
        CurvedAnimation(
            parent: menuAnimationController,
            curve: const Interval(0.5, 1, curve: Curves.easeIn)));
    leftRotateAnimation = Tween<double>(begin: -2 * 60 / 360, end: 0).animate(
        CurvedAnimation(
            parent: menuAnimationController,
            curve: const Interval(0.5, 1, curve: Curves.easeIn)));
    rightRotateAnimation = Tween<double>(begin: 2 * 60 / 360, end: 0).animate(
        CurvedAnimation(
            parent: menuAnimationController,
            curve: const Interval(0.5, 1, curve: Curves.easeIn)));
    opacityAnimation = Tween<double>(begin: 0, end: 1.0).animate(
        CurvedAnimation(
            parent: menuAnimationController,
            curve: const Interval(0, 1, curve: Curves.easeIn)));
    topMoveAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: menuAnimationController,
                curve: const Interval(0, 0.5, curve: Curves.easeIn)));
    leftMoveAnimation =
        Tween<Offset>(begin: const Offset(1, -0.6), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: menuAnimationController,
                curve: const Interval(0, 0.5, curve: Curves.easeIn)));
    rightMoveAnimation =
        Tween<Offset>(begin: const Offset(-1, -0.6), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: menuAnimationController,
                curve: const Interval(0, 0.5, curve: Curves.easeIn)));
    super.initState();
  }

  @override
  void dispose() {
    menuAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        value
            ? menuAnimationController.forward()
            : menuAnimationController.reverse();
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const TriangleWidget(text: 'Explore', icon: Icons.explore),
          Container(
            margin: const EdgeInsets.only(bottom: 330),
            child: SlideTransition(
              position: topMoveAnimation,
              child: FadeTransition(
                  opacity: opacityAnimation,
                  child: const TriangleWidget(
                    text: 'Profile',
                    icon: Icons.verified_user_rounded,
                  )),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 150, left: 300),
            child: SlideTransition(
              position: rightMoveAnimation,
              child: RotationTransition(
                turns: rightRotateAnimation,
                child: FadeTransition(
                    opacity: opacityAnimation,
                    child: const TriangleWidget(
                      text: 'Skills',
                      icon: Icons.checklist,
                    )),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 150, right: 300),
            child: SlideTransition(
              position: leftMoveAnimation,
              child: RotationTransition(
                turns: leftRotateAnimation,
                child: FadeTransition(
                    opacity: opacityAnimation,
                    child: const TriangleWidget(
                      text: 'Experiences',
                      icon: Icons.webhook,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
