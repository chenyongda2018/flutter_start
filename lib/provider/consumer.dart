import 'package:flutter/material.dart';
import 'package:flutter_start/provider/change_notifier_provider.dart';

class Consumer<T> extends StatelessWidget {
  Consumer({Key key, this.builder}) : super(key: key);

  final Widget Function(BuildContext context, T value) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, ChangeNotifierProvider.of<T>(context));
  }
}
