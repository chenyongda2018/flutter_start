import 'package:flutter/material.dart';

class ScanAnimPage extends StatefulWidget {
  @override
  _ScanAnimPageState createState() => _ScanAnimPageState();
}

class _ScanAnimPageState extends State<ScanAnimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan anim"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                width: 150,
                height: 150,
                image: AssetImage("images/wzry_01.jpeg"),
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 200,
                child: Expanded(
                  child: Column(
                    children: [
                      _downScanWidget,
                      SizedBox(
                        height: 20,
                      ),
                      _upScanWidget,
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _downScanWidget = Container(
    height: 90,
    width: 400,
    color: Colors.lightBlue,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: <Color>[
            Color(0x5929B6F6),
            Color(0x2129B6F6),
            Color(0x0029B6F6)
          ]),
    ),
  );

  Widget _upScanWidget = Container(
    height: 90,
    width: 400,
    decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0x5929B6F6),
            Color(0x2129B6F6),
            Color(0x0029B6F6)
          ]),
    ),
  );
}
