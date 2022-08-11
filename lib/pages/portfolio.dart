import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [purple, darker],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd)),
      child: Row(
        children: [
          const Expanded(child: Text('Portfolio Page')),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
