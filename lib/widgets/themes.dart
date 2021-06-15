import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.7,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
        cardColor: Colors.white,
        canvasColor: Mytheme.creamColor,
        buttonColor: Colors.green.shade600,
        accentColor: Colors.black54,
      );

  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.7,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme,
        ),
        cardColor: Colors.black,
        canvasColor: Mytheme.darkColor,
        buttonColor: Colors.green,
        accentColor: Colors.white,
      );
  //Colors

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkColor = Vx.gray900;
  static Color darkGreen = Color(0xff006400);
}
