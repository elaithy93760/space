import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/modules/planet_menu/planet_data_model.dart';

class PlanetDetails extends StatelessWidget {
  const PlanetDetails({super.key});
  static const String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as PlanetModel;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/background.png",
                    width: double.infinity,
                  ),
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.black,
                            const Color.fromARGB(122, 14, 14, 14),
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  planet.name,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight(700),
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              Text(
                                planet.title,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight(700),
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.red,
                        ),
                        child: Icon(Icons.arrow_back, color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Flutter3DViewer(src: planet.model3D),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 24,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      planet.about,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight(300),
                      ),
                    ),
                    Text(
                      "distance from Sun (km) :${planet.distanceFromSun}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Length of Day (hours) :${planet.lengthOfDay}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Orbital Period (Earth years) :${planet.orbitalPeriod}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Radius (km) :${planet.radius}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Mass (kg) :${planet.mass}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Gravity (m/s²) :${planet.gravity}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    Text(
                      "Surface Area (km²) :${planet.distanceFromSun}",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
