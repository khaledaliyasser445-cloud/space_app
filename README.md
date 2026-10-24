# Space App

Space App is a Flutter application for exploring the Sun and the eight planets in our solar system. Browse the celestial bodies, view rotating 3D models, and read key facts about each one.

## Features

- Landing screen with a direct link to the explorer.
- Planet browser with swipe navigation and previous/next controls.
- Individual details pages with rotating 3D models, descriptions, and scientific facts.
- Bundled images and 3D models for the Sun and all eight planets.
- Named routes for navigation between the landing, home, and details screens.

## Built With

- [Flutter](https://flutter.dev/) and Dart
- [`model_viewer_plus`](https://pub.dev/packages/model_viewer_plus) for 3D model display

## Getting Started

### Prerequisites

- Flutter SDK with a Dart SDK version compatible with the constraint in `pubspec.yaml`.
- An emulator, simulator, or connected device supported by your Flutter installation.

### Install and run

From the project root, fetch dependencies and start the app:

```bash
flutter pub get
flutter run
```

To run static analysis or the test suite:

```bash
flutter analyze
flutter test
```

## Project Structure

```text
lib/
  main.dart                  # App entry point and route configuration
  constans/                  # Route and display-string constants
  core/assets/               # Image, 3D model, and color definitions
  models/                    # Celestial-body data
  theme/                     # App theme
  ui/
    components/              # Reusable UI components
    landind_page/            # Landing screen
    home_page/               # Planet browser
    detalis_page/            # Celestial-body details
assets/
  images/                    # Screen and celestial-body images
  models/                    # 3D model files
```

Image and model assets are declared in `pubspec.yaml`. The app's main navigation routes are `/landing`, `/home`, and `/details`.
