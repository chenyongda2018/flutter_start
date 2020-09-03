
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_start/provider/product_item.dart';

class Cart extends ChangeNotifier {

  final List<Product> _items = [];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  double get totalPrice =>
      _items.fold(0, (previousValue, element) {
        return previousValue + element.count*element.price;
      });

  void addItem(Product p) {
    _items.add(p);
    notifyListeners();
  }
}