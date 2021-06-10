import 'package:flutter/material.dart';
import 'package:trial_app_2/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Items product;

  const ItemWidget({Key? key, required this.product})
      : assert(Items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("Insert Link to PRODUCT");
        },
        leading: Image.network(product.image),
        title: Text(product.name),
        subtitle: Text(
          product.desc,
          style: TextStyle(color: Colors.green),
        ),
        trailing: Text(
          "\Rs ${product.price}",
          style: TextStyle(color: Colors.green),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
