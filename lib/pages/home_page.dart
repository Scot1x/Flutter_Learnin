import 'package:flutter/material.dart';
import 'package:trial_app_2/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  String cool = "Build in progress";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mint_Beta"),
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
