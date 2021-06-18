import 'package:flutter/material.dart';
import 'package:trial_app_2/models/cart_model.dart';
import 'package:trial_app_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(100.0),
          child: "Cart".text.color(context.accentColor).xl2.make(),
        ),
        backgroundColor: context.cardColor,
      ),
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          _CartList().p24().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = Cartmodel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\Rs ${_cart.totalprice}".text.xl5.color(Colors.green).make(),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: "This feature not working".text.make()));
            },
            child: "Buy".text.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = Cartmodel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(
          Icons.done,
          color: Colors.green,
        ),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}
