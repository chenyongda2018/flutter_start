
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                "center",
                style: TextStyle(color: Colors.blue,fontSize: 30),
              ),
              Positioned(
                left: 20,
                child: Text(
                  "left",
                  style: TextStyle(color: Colors.blue,fontSize: 30),
                ),
              ),
              Positioned(
                top: 20,
                child: Text(
                  "top",
                  style: TextStyle(color: Colors.blue,fontSize: 30),
                ),
              ),
              Positioned(
                right: 20,
                child: Text(
                  "right",
                  style: TextStyle(color: Colors.blue,fontSize: 30),
                ),
              ),
              Positioned(
                bottom: 20,
                child: Text(
                  "bottom",
                  style: TextStyle(color: Colors.blue,fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
