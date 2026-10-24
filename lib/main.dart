import 'package:flutter/material.dart';
import 'constans/routs.dart';
import 'theme/app_themes.dart';
import 'ui/detalis_page/detalis_page.dart';
import 'ui/home_page/home_page.dart';
import 'ui/landind_page/landing_page.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space App',
      theme: AppTheme.appTheme,
      initialRoute: AppRoutes.landingRoute,
      routes: {
        AppRoutes.landingRoute: (context) => const LandingPage(),
        AppRoutes.homeRoute: (context) => const HomePage(),
        AppRoutes.detailsRoute: (context) => const DetailsPage(),
      },
    );
  }
}
