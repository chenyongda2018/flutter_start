

import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  bool _switchValue = false; //switch

  double _slideProgressValue = 0; //slider

  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Switch(
              value: _switchValue,
              onChanged: _toggleSwitch,
            ),
            Slider(
              min: 0,
              max: 100,
              onChanged: _slideProgress,
              onChangeStart: _slideStart,
              onChangeEnd: _slideEnd,
              value: _slideProgressValue,
              label: "${_slideProgressValue.floor()}",
            ),
            Checkbox(
              value: _checked,
              onChanged: _toggleCheckbox,
              activeColor: Colors.blue,
              tristate: true,
            ),
          ],
        ),
      ),
    );
  }

  void _slideProgress(double progress) {
    setState(() {
      _slideProgressValue = progress;
    });
  }

  void _toggleSwitch(bool newState) {
    setState(() {
      _switchValue = newState;
      print("_switchValue:${_switchValue}");
    });
  }

  void _slideStart(double progress) {
    print("slide start:${progress}");
  }

  void _slideEnd(double progress) {
    print("slide end:${progress}");
    if (progress == 100) {
      _toggleSwitch(true);
      return;
    }
    _toggleSwitch(false);
  }

  void _toggleCheckbox(bool isCheck) {
    setState(() {
      _checked = isCheck;
    });
  }
}
