import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_start/chapter_11_io/repo.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Request"),
      ),
      body: Center(
        child: FutureBuilder(
          future: _dio.get("https://api.github.com/users/chenyongda2018/repos"),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("请求错误${snapshot.error.toString()}");
              }


              Response response = snapshot.data;
              List<Repo> repos = response.data.map<Repo>((item) {
                print(item['full_name']);
                return Repo.fromJson(item);
              }).toList();

              return ListView.builder(
                itemExtent: 50,
                itemCount: 30,
                itemBuilder: (ctx, index) {
                  return ListTile(
                    title: Text(repos[index].name),
                  );
                },
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
