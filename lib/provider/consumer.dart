import 'package:flutter/material.dart';
import 'package:flutter_start/provider/change_notifier_provider.dart';

class Consumer<T> extends StatelessWidget {
  Consumer({Key Key, this.builder}) : super(key: Key);

  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, ChangeNotifierProvider.of<T>(context));
  }
}
