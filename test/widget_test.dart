// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_start/state_management/cart_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test add item in cart model', () {
    final cart = CartModel();
    int startPrice = cart.totalPrice;
    cart.addListener(() {
      expect(cart.totalPrice, greaterThan(startPrice));
    });
    cart.add(Item("switch"));
  });
}
