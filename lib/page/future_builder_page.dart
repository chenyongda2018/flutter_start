import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future builder"),
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: _fetchData(),
          builder: (BuildContext context,AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.done) {
              if(snapshot.hasError) {
                return Container(
                  child: Text("请求失败,error msg:${snapshot.error.toString()}"),
                );
              }
              return Text("请求成功,data:${snapshot.data}");
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<String> _fetchData() {
    Future.delayed(Duration(seconds: 2), () {
      return "netword data";
    });
  }
}
