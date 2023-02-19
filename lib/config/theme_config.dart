import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData buildDefaultThemeData(BuildContext context) {
    return ThemeData(
      // Override specific colors
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color.fromRGBO(255, 125, 26, 1),
        secondary: const Color.fromRGBO(255, 237, 224, 1),
      ),
      fontFamily: "KumbhSans",
      // Override specific texts theme
      textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontFamily: "KumbhSans",
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
      // Customize the theme of APP Bar
      appBarTheme: AppBarTheme.of(context).copyWith(
        foregroundColor: const Color.fromRGBO(29, 32, 37, 1),
        actionsIconTheme: IconTheme.of(context).copyWith(
          color: const Color.fromRGBO(182, 188, 200, 1),
        ),
        backgroundColor: Colors.white,
        titleTextStyle: ThemeData.light()
            .textTheme
            .headline6!
            .copyWith(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}
