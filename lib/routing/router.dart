import 'package:flutter/material.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/portfolio.dart';
import 'package:portfolio/pages/profile.dart';
import 'package:portfolio/pages/skills.dart';
import 'package:portfolio/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomePage(), HomeRoute);
    case ProfileRoute:
      return _getPageRoute(const ProfilePage(), ProfileRoute);
    case SkillsRoute:
      return _getPageRoute(const SkillsPage(), SkillsRoute);
    case PortfolioRoute:
      return _getPageRoute(const PortfolioPage(), PortfolioRoute);
    default:
      return _getPageRoute(const HomePage(), HomeRoute);
  }
}

PageRoute _getPageRoute(Widget page, String route) => PageRouteBuilder(
    pageBuilder: ((context, animation, secondaryAnimation) {
      return page;
    }),
    transitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      animation = CurvedAnimation(curve: Curves.decelerate, parent: animation);
      switch (route) {
        case ProfileRoute:
          return SlideTransition(
            position:
                Tween(begin: const Offset(0, -1), end: const Offset(0.0, 0.0))
                    .animate(animation),
            child: child,
          );
        case SkillsRoute:
          return SlideTransition(
            position: Tween(
                    begin: const Offset(0.5, 0.5), end: const Offset(0.0, 0.0))
                .animate(animation),
            child: child,
          );
        case PortfolioRoute:
          return SlideTransition(
            position: Tween(
                    begin: const Offset(-0.5, 0.5), end: const Offset(0.0, 0.0))
                .animate(animation),
            child: child,
          );
        default:
          return SlideTransition(
            position:
                Tween(begin: const Offset(0, 1), end: const Offset(0.0, 0.0))
                    .animate(animation),
            child: child,
          );
      }
    });
