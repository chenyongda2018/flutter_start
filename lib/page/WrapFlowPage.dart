import 'package:flutter/material.dart';

class WrapFlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap Flow layout")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 2,
                  alignment: WrapAlignment.spaceEvenly,
                  children: <Widget>[
                    Chip(
                      avatar: Text("A"),
                      label: Text("Alpha"),
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      label: Text("Beta"),
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("C"),
                      ),
                      label: Text("Circle"),
                    ),
                    Chip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text("D"),
                      ),
                      label: Text("Deepin"),
                    ),
                    Chip(
                      avatar: Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      label: Text("Deepin"),
                    ),
                  ],
                )),
            Flow(
              delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
              children: <Widget>[
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.red,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.green,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.yellow,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.brown,
                ),
                new Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.purple,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0), opacity: 0.5);
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i,
            transform: new Matrix4.translationValues(x, y, 0.0), opacity:1);
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints) {
    //指定Flow的大小
    return Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
