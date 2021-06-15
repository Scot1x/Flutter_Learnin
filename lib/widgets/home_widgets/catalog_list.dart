import 'package:flutter/material.dart';
import 'package:trial_app_2/models/catalog.dart';
import 'package:trial_app_2/pages/home_detail_page.dart';

import 'package:trial_app_2/widgets/home_widgets/catalog_Image.dart';
import 'package:trial_app_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.product.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.product[index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog),
                  ),
                ),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Items catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.theme.buttonColor).bold.make(),
            catalog.desc.text.sm.color(context.accentColor).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\₹${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                  child: "Add to cart".text.make(),
                ),
              ],
            )
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(150).make().py16();
  }
}
