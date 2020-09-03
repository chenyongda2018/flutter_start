import 'package:flutter/material.dart';
import 'package:flutter_start/provider/change_notifier_provider.dart';
import 'package:flutter_start/provider/consumer.dart';
import 'package:flutter_start/provider/product_item.dart';
import 'package:flutter_start/provider/shopping_cart_model.dart';

class ProviderPage extends StatefulWidget {
  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: ChangeNotifierProvider<Cart>(
          data: Cart(),
          child: Builder(builder: (context) {
            return Column(
              children: <Widget>[
                Consumer<Cart>(
                  builder: (context, cart) {
                    return Text("总价: ${cart.totalPrice}");
                  },
                ),
                Builder(builder: (context) {
                  print("RaisedButton build"); //在后面优化部分会用到
                  return RaisedButton(
                    child: Text("添加商品"),
                    onPressed: () {
                      //给购物车中添加商品，添加后总价会更新
                      ChangeNotifierProvider.of<Cart>(context, listen: true)
                          .addItem(Product(20.0, 1));
                    },
                  );
                }),
              ],
            );
          }),
        ),
      ),
    );
  }
}
