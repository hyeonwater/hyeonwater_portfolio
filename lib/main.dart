import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_portfolio/pages/about_page/about_main_page.dart';
import 'package:my_portfolio/pages/main_page.dart';
import 'package:my_portfolio/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
  MainPage.routeName:(context) => const MainPage(),
  AboutMainPage.routeName:(context) => const AboutMainPage(),
};


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: _routes,
      );
  }
}

