import 'package:flutter/material.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/modules/planet_menu/planet_menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/home_planet.png',
                fit: BoxFit.contain,
                height: double.infinity,
              ),
            ),

            Positioned(
              left: 16,
              top: 300,
              child: Text(
                'Explore\nThe\nUniverse',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight(900),
                  color: AppColors.white,
                ),
              ),
            ),

            Positioned(
              left: 20,
              right: 20,
              bottom: 25,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, PlanetMenu.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.red,
                  foregroundColor: AppColors.white,
                  elevation: 8,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight(600),
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
