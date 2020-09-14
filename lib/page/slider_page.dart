import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 0;

  void _updateSliderValue(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Center(
        child: Slider(
          value: _sliderValue,
          label: "$_sliderValue",
          onChanged: _updateSliderValue,
        ),
      ),
    );
  }
}
