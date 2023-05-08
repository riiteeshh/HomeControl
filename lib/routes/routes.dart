import 'package:flutter/material.dart';
import 'package:home_control/pages/home_page.dart';

class RouteManager {
  //static const String loginPage = '/';
  static const String homePage = '/';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        throw const FormatException('Route not found!');
    }
  }
}
