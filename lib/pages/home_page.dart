import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:trial_app_2/utils/routes.dart';
import 'package:trial_app_2/widgets/home_widgets/catalog_header.dart';
import 'package:trial_app_2/widgets/home_widgets/catalog_list.dart';
import 'package:trial_app_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trial_app_2/models/catalog.dart';

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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, Myroutes.cartRoutes);
          },
          backgroundColor: context.theme.buttonColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ),
        backgroundColor: context.canvasColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.product != null &&
                    CatalogModel.product.isNotEmpty)
                  CatalogList().py12().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            ),
          ),
        ));
  }
}
