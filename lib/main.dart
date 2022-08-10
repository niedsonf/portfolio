import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app_layout.dart';
import 'package:portfolio/routing/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RootRoute,
      getPages: [GetPage(name: RootRoute, page: () => const AppLayout())],
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      title: 'Niedson Portfolio',
    );
  }
}
