import 'dart:ui';

import 'main.dart';

Color lightPrimary = const Color(0xFF6200ee);
Color lightPrimaryVariant = const Color(0xFF018786);
Color lightSecondary = const Color(0xFF03dac6);
Color lightSecondaryVariant = const Color(0xFF018786);
Color lightBackground = const Color(0xffffffff);
Color lightSurface = const Color(0xFFffffff);
Color lightError = const Color(0xFFb00020);
Color lightOnPrimary = const Color(0xFFffffff);
Color lightOnSecondary = const Color(0xFF000000);
Color lightOnBackground = const Color(0xFF000000);
Color lightOnSurface = const Color(0xFF000000);
Color lightOnError = const Color(0xFFffffff);

Color darkPrimary = const Color(0xFFdd86fc);
Color darkPrimaryVariant = const Color(0xff3700b3);
Color darkSecondary = const Color(0xFF03dac6);
Color darkBackground = const Color(0xFF121212);
Color darkSurface = const Color(0xFF121212);
Color darkError = const Color(0xFFcf6679);
Color darkOnPrimary = const Color(0xFF000000);
Color darkOnSecondary = const Color(0xFF000000);
Color darkOnBackground = const Color(0xFFffffff);
Color darkOnSurface = const Color(0xFFffffff);
Color darkOnError = const Color(0xFF000000);

Color primary = darkPrimary;
Color primaryVariant = darkPrimaryVariant;
Color secondary = darkSecondary;
Color secondaryVariant = lightSecondaryVariant;
Color background = darkBackground;
Color surface = darkSurface;
Color error = darkError;
Color onPrimary = darkOnPrimary;
Color onSecondary = darkOnSecondary;
Color onBackground = darkOnBackground;
Color onSurface = darkOnSurface;
Color onError = darkOnError;
Color same = Color(0xffffffff);
bool dark = true;

void switchColor() {
  if (dark == true) {
    primary = darkPrimary;
    primaryVariant = darkPrimaryVariant;
    secondary = darkSecondary;
    secondaryVariant = lightSecondaryVariant;
    background = darkBackground;
    surface = darkSurface;
    error = darkError;
    onPrimary = darkOnPrimary;
    onSecondary = darkOnSecondary;
    onBackground = darkOnBackground;
    onSurface = darkOnSurface;
    onError = darkOnError;
    url = "images/ground4.jpg";
  } else {
    primary = lightPrimary;
    primaryVariant = lightPrimaryVariant;
    secondary = lightSecondary;
    secondaryVariant = lightSecondaryVariant;
    background = lightBackground;
    surface = lightSurface;
    error = lightError;
    onPrimary = lightOnPrimary;
    onSecondary = lightOnSecondary;
    onBackground = lightOnBackground;
    onSurface = lightOnSurface;
    onError = lightOnError;
    url = "images/ground1.jpg";
  }
}
