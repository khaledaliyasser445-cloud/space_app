import 'package:flutter/material.dart';
import 'package:my_app/constans/routs.dart';
import 'package:my_app/constans/strings.dart';
import 'package:my_app/core/assets/app_images.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset(
              AppImages.splashImage,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Strings.exploreTheUniverse,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 70,
                    ),
              ),
            ),
            Positioned(
              bottom: 1,
              left: 10,
              right: 0,
              child: SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    AppRoutes.homeRoute,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(
                    Strings.explore,
                   style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  ),                 
                ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

