import 'package:flutter/material.dart';
import 'package:space/core/theme/app_colors.dart';
import 'package:space/modules/planet_details/planet_details.dart';
import 'package:space/modules/planet_menu/planet_data_model.dart';
import 'package:space/modules/planet_menu/planet_data_model.dart' as planet;

class PlanetMenu extends StatefulWidget {
  const new({super.key});

  static const String routeName = '/planet_menu';

  @override
  State<PlanetMenu> createState() => _PlanetMenuState();
}

class _PlanetMenuState extends State<PlanetMenu> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                              "Explore",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight(700),
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          Text(
                            "Which planet\nwould you like to explore?",
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
            ],
          ),

          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              itemCount: planets.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(planets[index].image),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    pageController.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
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
                Text(
                  planets[selectedIndex].name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight(700),
                    color: AppColors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  icon: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.red,
                    ),
                    child: Icon(Icons.arrow_forward, color: AppColors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                  Navigator.pushNamed(context, PlanetDetails.routeName,
                  arguments: planet.planets[selectedIndex]);
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
                    'Explore ${planets[selectedIndex].name}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight(600)),
                  ),
                  Icon(Icons.arrow_forward, size: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
