import 'package:flutter/material.dart';
import 'package:portfolio/constants/style.dart';
import 'package:portfolio/widgets/portfolio_item.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: purple),
      child: ListView(children: const [
        SizedBox(height: 30),
        FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: 0.5,
            child: PortfolioItem()),
        SizedBox(height: 30),
        FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: 0.5,
            child: PortfolioItem()),
        SizedBox(height: 30),
        FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: 0.5,
            child: PortfolioItem()),
        SizedBox(height: 30),
        FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: 0.5,
            child: PortfolioItem()),
        SizedBox(height: 30),
        FractionallySizedBox(
            alignment: AlignmentDirectional.centerStart,
            widthFactor: 0.5,
            child: PortfolioItem()),
        SizedBox(height: 30),
      ]),
    );
  }
}
