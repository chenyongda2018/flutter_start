import 'package:flutter/material.dart';

///
class TextFieldPage extends StatelessWidget {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _textEditingController.text = "123456789";
    _textEditingController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _textEditingController.text.length,
    );// 设置选中区域

    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Column(
                  children: <Widget>[
                    TextField(
                      onChanged: (str) {
                        print("username:${str}");
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        hintText: "用户名或邮箱",
                      ),
                    ),
                    TextField(
                      obscureText: true, //隐藏文字
                      onChanged: (str) {
                        print("password:${str}");
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password",
                        hintText: "密码",
                      ),
                    ),
                    TextField(
                      controller: _textEditingController,//.text可获取输入内容
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Phone",
                        hintText: "电话",
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
