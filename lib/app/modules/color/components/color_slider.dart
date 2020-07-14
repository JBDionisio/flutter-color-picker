import 'package:flutter/material.dart';

class ColorSlider extends StatelessWidget {
  final double value;
  final Function(double) onChanged;

  const ColorSlider({
    Key key,
    @required this.value,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 0,
      max: 255,
      divisions: 10,
      value: value,
      onChanged: (value) {
        onChanged(value);
      },
    );
  }
}
