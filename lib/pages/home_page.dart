import 'package:flutter/material.dart';

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
      drawer: Drawer(),
    );
  }
}
