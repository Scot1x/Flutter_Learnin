import 'package:flutter/material.dart';
import 'package:trial_app_2/pages/home_page.dart';
import 'package:trial_app_2/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial_app_2/utils/routes.dart';

//git push --set-upstream origin Day
void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Myroutes.loginRoutes: (context) => LoginPage(),
        Myroutes.homeRoutes: (context) => HomePage(),
      },
    );
  }
}
