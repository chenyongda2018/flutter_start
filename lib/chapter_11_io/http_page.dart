
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Http Request"),),
      body: Center(
        child: FutureBuilder(
          future: _dio.get("https://api.github.com/orgs/flutterchina/repos"),
          builder: (BuildContext context,AsyncSnapshot snapshot) {
            if(snapshot.connectionState == ConnectionState.done) {
              if(snapshot.hasError){
                return Text("请求错误${snapshot.error.toString()}");
              }
              Response response = snapshot.data;
              return ListView(
                itemExtent: 40,
                children: response.data.map<Widget>((e) {
                  return ListTile(
                    title: Text(e["full_name"]),
                  );
                }).toList(),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
