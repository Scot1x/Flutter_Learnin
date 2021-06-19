import 'package:flutter/material.dart';
import 'package:trial_app_2/models/catalog.dart';
import 'package:trial_app_2/widgets/home_widgets/add_to_cart.dart';
import 'package:trial_app_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Items catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        color: context.canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\₹${catalog.price}".text.bold.xl4.red800.make(),
            AddtoCart(catalog: catalog).wh(120, 50),
          ],
        ).p16(),
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
                    height: 30,
                    edge: VxEdge.TOP,
                    arcType: VxArcType.CONVEY,
                    child: Container(
                      width: context.screenWidth,
                      color: context.cardColor,
                      child: Column(
                        children: [
                          catalog.name.text.xl4
                              .color(context.theme.buttonColor)
                              .bold
                              .make(),
                          catalog.desc.text.sm
                              .color(context.accentColor)
                              .make(),
                          "Lange dahinten zuletzt gefärbt perlet die lieb. Du liebe seufzer  schwester. Ich stillestehn , der mein   ist du ergötzt bäume. Der vaterland heut deiner gestehe die."
                              .text
                              .sm
                              .color(context.accentColor)
                              .make()
                              .py12(),
                        ],
                      ).p64(),
                    )))
          ],
        ).py16(),
      ),
    );
  }
}
