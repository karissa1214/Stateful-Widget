import 'package:flutter/material.dart';

class LatSlider extends StatefulWidget {
  const LatSlider({super.key});

  @override
  State<LatSlider> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<LatSlider> {
  double _currentSliderPrimaryValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Adjust the Volume :',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            min: 0.0,
            max: 100.0,
            value: _currentSliderPrimaryValue,
            label: _currentSliderPrimaryValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderPrimaryValue = value;
              });
            },
          ),
          Text(
            'Volume : $_currentSliderPrimaryValue',
          ),
        ],
      ),
    );
  }
}