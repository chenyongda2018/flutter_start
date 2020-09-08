import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:path_provider/path_provider.dart';

class FileOperationPage extends StatefulWidget {
  @override
  _FileOperationPageState createState() => _FileOperationPageState();
}

class _FileOperationPageState extends State<FileOperationPage> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _readCount().then((int result) {
      setState(() {
        _count = result;
      });
    });
  }


  //read file
  Future<File> _getLocalFile() async {
    String path = (await getApplicationDocumentsDirectory()).path;
    print("getApplicationDocumentsDirectory path:$path");
    return File("$path/count.txt");
  }

  //read file content
  Future<int> _readCount() async {
    File file = await _getLocalFile();
    String count = await file.readAsString();
    return int.parse(count);
  }

  //write content to file
  Future _incrementCount() async {
    File file = await _getLocalFile();
    setState(() {
      _count++;
    });
    await file.writeAsString("$_count");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文件操作"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrementCount,
      ),
    );
  }
}
