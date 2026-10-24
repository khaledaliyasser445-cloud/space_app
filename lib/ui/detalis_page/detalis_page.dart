import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:my_app/core/assets/app_images.dart';
import 'package:my_app/models/plant.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as Planet;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHeader(context, planet),
          AspectRatio(
            aspectRatio: 1,
            child: ModelViewer(
              backgroundColor: Colors.black,
              src: planet.model3d,
              alt: planet.title,
              ar: false,
              autoRotate: true,
              disableZoom: true,
            ),
          ),
          _buildPlanetDetails(planet),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, Planet planet) {
    return SizedBox(
      height: 165,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.halfPlantImage,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 34,
                          height: 34,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEE403D),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 19,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          planet.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 34),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(planet.title, style: _titleStyle),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanetDetails(Planet planet) {
    final facts = [
      'Distance from Sun (km): ${planet.distanceFromSun}',
      'Length of Day (hours): ${planet.lengthOfDay}',
      'Orbital Period (Earth years): ${planet.orbitalPeriod}',
      'Radius (km): ${planet.radius}',
      'Mass (kg): ${planet.mass}',
      'Gravity (m/s²): ${planet.gravity}',
      'Surface Area (km²): ${planet.surfaceArea}',
    ];

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('About', style: _sectionStyle),
          const SizedBox(height: 8),
          Text(planet.about, style: _aboutStyle),
          const SizedBox(height: 16),
          for (final fact in facts) _buildFact(fact),
        ],
      ),
    );
  }

  Widget _buildFact(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Text(text, style: _infoStyle),
    );
  }
}

const TextStyle _titleStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

const TextStyle _sectionStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const TextStyle _aboutStyle = TextStyle(
  color: Color(0xFFBDBDBD),
  fontSize: 12,
  height: 1.4,
);

const TextStyle _infoStyle = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);
