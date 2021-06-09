import 'package:flutter/material.dart';
import 'package:trial_app_2/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  String cool = "Build in progress";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "\t \t \t \t \t Mint Catalog",
        ),
      ),
      body: Center(
        child: Container(
          child: Text("$cool"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
