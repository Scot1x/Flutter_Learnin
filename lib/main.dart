import 'package:flutter/material.dart';
import 'package:trial_app_2/home_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: good(),
    );
  }
}
