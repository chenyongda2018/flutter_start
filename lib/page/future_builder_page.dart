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
         child: StreamBuilder<int>(
           stream: _streamBuilder(),
           builder: (BuildContext context,AsyncSnapshot snapshot) {
             if(snapshot.hasError) {
               return Text("发生错误:${snapshot.error.toString()}");
             }
             switch(snapshot.connectionState) {
               case ConnectionState.none :{
                 return Text("没有stream");
               }
               case ConnectionState.waiting :{
                 return Text("等待stream");
               }
               case ConnectionState.active:{
                 return Text("active : ${snapshot.data}");
               }
               case ConnectionState.done:{
                 return Text("stream已关闭");
               }
             }
             return null;
           },
         ),
      ),
    );
  }



  Stream<int> _streamBuilder() {
    return Stream.periodic(Duration(seconds: 1),(i) {
      return i;
    });
  }


  Widget _futureBuilder () {
    return Center(
      child: FutureBuilder<String>(
        initialData: "loading...",
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
    );
  }

  Future<String> _fetchData() async {
    return Future.delayed(Duration(seconds: 2), () {
      return "data from network";
    });
  }
}
