import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [pink, darker],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd)),
      child: Row(
        children: [
          const Expanded(child: Text('Skills Page')),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
