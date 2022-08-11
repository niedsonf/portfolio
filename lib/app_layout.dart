import 'package:flutter/material.dart';
import 'package:portfolio/helpers/local_navigator.dart';
import 'package:portfolio/widgets/radial_menu.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      localNavigator(),
      Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Container(
              margin: const EdgeInsets.only(right: 100),
              child: const RadialMenu()))
    ]));
  }
}
