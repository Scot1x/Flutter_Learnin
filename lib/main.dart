import 'package:flutter/material.dart';
import 'package:trial_app_2/pages/home_page.dart';
import 'package:trial_app_2/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trial_app_2/utils/routes.dart';
import 'package:trial_app_2/widgets/themes.dart';

//git push --set-upstream origin Day
void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.LightTheme(context),
      debugShowCheckedModeBanner: false,
      routes: {
        Myroutes.loginRoutes: (context) => LoginPage(),
        Myroutes.homeRoutes: (context) => HomePage(),
      },
    );
  }
}
