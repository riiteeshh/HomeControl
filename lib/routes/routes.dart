import 'package:flutter/material.dart';
import 'package:home_control/pages/home_page.dart';
import 'package:home_control/pages/profile_page.dart';

class RouteManager {
  static const String settingsPage = '/settingsPage';
  static const String homePage = '/';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case settingsPage:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
