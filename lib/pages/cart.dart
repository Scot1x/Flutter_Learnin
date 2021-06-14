import 'package:flutter/material.dart';
import 'package:trial_app_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100.0),
          child: "Cart".text.xl2.make(),
        ),
        backgroundColor: Mytheme.creamColor,
      ),
      backgroundColor: Mytheme.creamColor,
    );
  }
}
