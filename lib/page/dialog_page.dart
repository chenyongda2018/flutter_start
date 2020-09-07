import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/builder/statefull_builder.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    print("DialogPageState context:${context.toString()}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlineButton(
              child: Text("AlertDialog 1"),
              onPressed: () async {
                bool res = await _showDeleteFileConfirmDialog(context);
                if (res == true) {
                  print("确认删除");
                } else {
                  print("没有删除");
                }
              },
            ),
            OutlineButton(
              child: Text("SimpleDialog"),
              onPressed: () async {
                _showChooseLangDialog(context);
              },
            ),
            OutlineButton(
              child: Text("List item Dialog"),
              onPressed: () async {
                _showListDialog(context);
              },
            ),
            OutlineButton(
              child: Text("checkbox dialog"),
              onPressed: () async {
                _showDeleteDirDialog();
              },
            ),
            OutlineButton(
              child: Text("checkbox dialog with markNeedsBuild"),
              onPressed: () async {
                _showDeleteDirDialogWithContext();
              },
            ),
            OutlineButton(
              child: Text("Modal BottomSheet"),
              onPressed: () async {
                int index = await _showModalDialog();
                print("select is $index");
              },
            ),
            OutlineButton(
              child: Text("Loading Dialog"),
              onPressed: () {
                _showLoadingDialog();
              },
            ),
            OutlineButton(
              child: Text("dateTime picker"),
              onPressed: () async{
               var date =  await _showDateDialog();
               print("date is ${date}");
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<DateTime> _showDateDialog() async{
    var cur = DateTime.now();
    print("now is ${cur.toUtc()}");
    return showDatePicker(context: context,
        initialDate: cur,
        firstDate: cur,
        lastDate: cur.add(Duration(days: 30)));
  }


  //loading dialog
  void _showLoadingDialog() {
    showDialog(context: context,
        builder: (BuildContext context) {
          return UnconstrainedBox(
            constrainedAxis: Axis.vertical,
            child: SizedBox(
              width: 160,
              height: 160,
              child: AlertDialog(
                content: CircularProgressIndicator(),
              ),
            ),
          );
        });
  }

  //底部bottom sheet
  Future<int> _showModalDialog() {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return ListView.builder(
              itemCount: 20,
              itemExtent: 40,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("$index"),
                  onTap: () {
                    Navigator.of(context).pop(index);
                  },
                );
              });
        });
  }

  bool _withTree = false;

  Future<bool> _showDeleteDirDialog() async {
    bool result = await showDialog<bool>(
        context: context,
        builder: (context) {
          print("builder context:${context.toString()}");
          return AlertDialog(
            title: Text("提示"),
            content: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("您确定要删除当前文件吗"),
                  Row(
                    children: <Widget>[
                      Text("同时删除子目录"),
                      MyStatefulBuilder(builder: (context, _setState) {
                        print(
                            "MyStatefulBuilder context:${context.toString()}");
                        return Checkbox(
                          value: _withTree,
                          onChanged: (bool value) {
                            _setState(() {
                              _withTree = !_withTree;
                            });
                          },
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("确认"),
                onPressed: () {
                  Navigator.of(context).pop(_withTree);
                },
              )
            ],
          );
        });
    if (result == true) {
      print("删除当前文件且删除子目录");
    } else if (result == null) {
      print("不删除");
    } else {
      print("delete cur dir");
    }
  }

  Future<bool> _showDeleteDirDialogWithContext() async {
    bool result = await showDialog<bool>(
        context: context,
        builder: (context) {
          print("builder context:${context.toString()}");
          return AlertDialog(
            title: Text("提示"),
            content: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("您确定要删除当前文件吗"),
                  Row(
                    children: <Widget>[
                      Text("同时删除子目录"),
                      Builder(
                        builder: (context) {
                          print(
                              "Checkbox builder context:${context.toString()}");
                          return Checkbox(
                            value: _withTree,
                            onChanged: (bool value) {
                              (context as Element).markNeedsBuild();
                              _withTree = !_withTree;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("确认"),
                onPressed: () {
                  Navigator.of(context).pop(_withTree);
                },
              )
            ],
          );
        });
    if (result == true) {
      print("删除当前文件且删除子目录");
    } else if (result == null) {
      print("不删除");
    } else {
      print("delete cur dir");
    }
  }

  Future<void> _showListDialog(BuildContext context) async {
    int index = await showDialog<int>(
        context: context,
        builder: (context) {
          var child = Column(
            children: <Widget>[
              ListTile(
                title: Text("Select"),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemExtent: 50,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: ListTile(
                          title: Text("item $index"),
                          onTap: () {
                            Navigator.pop(context, index);
                          },
                        ),
                      );
                    }),
              ),
            ],
          );
          return Dialog(
            child: child,
          );
        });
    print("Select result is $index");
  }

  Future<void> _showChooseLangDialog(BuildContext context) async {
    int i = await showDialog<int>(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("Select language"),
            children: <Widget>[
              SimpleDialogOption(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Chinese"),
                ),
                onPressed: () {
                  Navigator.pop(context, 1);
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("English"),
                ),
                onPressed: () {
                  Navigator.pop(context, 2);
                },
              ),
            ],
          );
        });

    print("The result is ${i == 1 ? "Chinese" : "English"}");
  }

  Future<bool> _showDeleteFileConfirmDialog(BuildContext context) {
    return showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("提示"),
            content: Text("确认要删除文件？"),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text("确认"),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }
}
