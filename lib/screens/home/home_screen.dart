import 'package:flutter/material.dart';
import 'package:responsive_portfolio/screens/home/components/heigh_lights_info.dart';
import 'package:responsive_portfolio/screens/home/components/home_banner.dart';
import 'package:responsive_portfolio/screens/home/components/my_projects.dart';
import 'package:responsive_portfolio/screens/home/components/recommendations.dart';
import 'package:responsive_portfolio/screens/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HeighLightsInfo(),
        MyProjects(),
        Recommendations()
      ],
    );
  }
}

