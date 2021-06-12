import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial_app_2/models/catalog.dart';
import 'package:trial_app_2/widgets/drawer.dart';
import 'package:trial_app_2/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 1));
    final catalogJson =
        await rootBundle.loadString("Assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.product = List.from(productsData)
        .map<Items>((item) => Items.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "\t \t \t \t \t Mint Catalog",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: (CatalogModel.product != null && CatalogModel.product.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.product.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    product: CatalogModel.product[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
