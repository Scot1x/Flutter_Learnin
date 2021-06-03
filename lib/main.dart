import 'package:flutter/material.dart';
import 'package:trial_app_2/pages/home_page.dart';
import 'package:trial_app_2/pages/login_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.yellow),
      routes: {"/": (context) => good(), "/login": (context) => LoginPage()},
    );
  }
}
