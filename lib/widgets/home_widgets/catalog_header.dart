import 'package:flutter/material.dart';
import 'package:trial_app_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Mint Catalog".text.xl5.bold.color(context.theme.buttonColor).make(),
        "Trending GPU's".text.xl.color(context.theme.buttonColor).make(),
      ],
    );
  }
}
