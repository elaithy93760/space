import 'package:flutter/material.dart';
import 'package:space/core/theme/app_theme_manager.dart';
import 'package:space/modules/home/home.dart';
import 'package:space/modules/planet_details/planet_details.dart';
import 'package:space/modules/planet_menu/planet_menu.dart';

void main() {
  runApp(const Space());
}

class Space extends StatelessWidget {
  const Space({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space',
      theme: getAppTheme(),
      home: Home(),
      routes: {
        PlanetMenu.routeName: (context) => const PlanetMenu(),
        Home.routeName: (context) => const Home(),
        PlanetDetails.routeName:(context) => const PlanetDetails(),
      },
      // initialRoute: Home.routeName,
    );
  }
}
