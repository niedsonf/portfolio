import 'package:flutter/material.dart';
import 'package:portfolio/helpers/controllers.dart';
import 'package:portfolio/routing/router.dart';

Navigator localNavigator() => Navigator(
      key: menuController.navigationKey,
      initialRoute: menuController.activePage.value,
      onGenerateRoute: generateRoute,
    );
