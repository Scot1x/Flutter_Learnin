import 'package:flutter/material.dart';
import 'package:trial_app_2/models/catalog.dart';
import 'package:trial_app_2/widgets/drawer.dart';
import 'package:trial_app_2/widgets/item_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.product.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              product: CatalogModel.product[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
