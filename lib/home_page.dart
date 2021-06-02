import 'package:flutter/material.dart';

class good extends StatelessWidget {
  String cool = "Nigga";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mint_Beta"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          child: Text("YOYOYO $cool"),
          color: Colors.grey,
        ),
      ),
      drawer: Drawer(),
    );
  }
}
