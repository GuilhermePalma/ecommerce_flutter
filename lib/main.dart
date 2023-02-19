import 'package:ecommerce_product/config/theme_config.dart';
import 'package:ecommerce_product/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.buildDefaultThemeData(context),
      home: const HomePageScreen(),
    );
  }
}
