import 'package:flutter/material.dart';
import 'package:flutter_start/state_management/cart_model.dart';
import 'package:provider/provider.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("ChangeNotifierProvider"),
          actions: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.centerRight,
              child: Consumer<CartModel>(
                builder: (context, cart, child) {
                  int totalPrice = cart.totalPrice;
                  return Text("总价￥$totalPrice");
                },
              ),
            ),
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Consumer<CartModel>(
            builder: (context, cart, child) {
              return GestureDetector(
                child: ListTile(
                  title: Text("$index"),
                ),
                onTap: () {
                  cart.add(Item("$index"));
                },
              );
            },
          );
        }),
//        floatingActionButton: FloatingActionButton(
//          child: Icon(Icons.card_travel),
//          onPressed: () {
////            Navigator.pushNamed(context, routeName)
//          },
//        ),
      ),
    );
  }
}
