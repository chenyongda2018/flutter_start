import 'package:flutter/material.dart';


class InheritedPage extends StatefulWidget {
  @override
  _InheritedPageState createState() => _InheritedPageState();
}

class _InheritedPageState extends State<InheritedPage> {


  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inherited Widget"),),
      body: Center(
        child: SharedDataWidget(
          data: _count,
          child: TestInheritedWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}


















class SharedDataWidget extends InheritedWidget {

  SharedDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data;

  static SharedDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedDataWidget>();
  }

  @override
  bool updateShouldNotify(SharedDataWidget old) {
    return old.data != data;
  }
}


class TestInheritedWidget extends StatefulWidget {
  @override
  _TestInheritedWidgetState createState() => _TestInheritedWidgetState();
}

class _TestInheritedWidgetState extends State<TestInheritedWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        SharedDataWidget.of(context).data.toString(),
        style: TextStyle(fontSize: 30),
      ),
    );
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("TestInheritedWidget.didChangeDependencies");
  }
}

