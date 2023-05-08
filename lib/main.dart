import 'package:flutter/material.dart';
import 'package:home_control/pages/home_page.dart';
import 'package:home_control/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteManager.homePage,
      onGenerateRoute: RouteManager.generateRoute,
      //home: const HomePage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
          color: Color(0xff1b1615),
        ),
        scaffoldBackgroundColor: Color(0xff1b1615),
      ),
    );
  }
}
