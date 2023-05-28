import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color.fromARGB(179, 177, 232, 14),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(179, 177, 232, 14),
            textStyle: const TextStyle(
              color: Color.fromARGB(179, 177, 232, 14),
            ),
            side: const BorderSide(
                color: Color.fromARGB(179, 177, 232, 14), width: 1.7),
            disabledForegroundColor:
                const Color.fromARGB(179, 177, 232, 14).withOpacity(0.38))),
    inputDecorationTheme: InputDecorationTheme(
      border: outlineInputBorder,
      errorBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      focusedBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(179, 177, 232, 14),
        textStyle: const TextStyle(
          fontSize: 18.0,
        ),
        disabledBackgroundColor: Colors.grey,
      ),
    ),
    primarySwatch: const MaterialColor(0xFFF3C42B, {
      50: Color(0xFFFFF8E1),
      100: Color(0xFFFFF1C1),
      200: Color(0xFFFFE993),
      300: Color(0xFFFFE365),
      400: Color(0xFFFFDA37),
      500: Color(0xFFF3C42B),
      600: Color(0xFFE2B426),
      700: Color(0xFFD1A021),
      800: Color(0xFFBF8B1C),
      900: Color(0xFFAD7617),
    }),
    canvasColor: const Color.fromARGB(252, 243, 196, 43),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black)));

OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey,
  ),
);
