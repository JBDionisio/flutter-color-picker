import 'package:flutter/material.dart';

class ColorSlide extends StatefulWidget {
  final double value;
  final Function(double) onChanged;
  final Map color;
  final String colorValue;

  const ColorSlide({
    Key key,
    @required this.value,
    @required this.onChanged,
    @required this.color,
    @required this.colorValue,
  }) : super(key: key);

  @override
  _ColorSlideState createState() => _ColorSlideState();
}

class _ColorSlideState extends State<ColorSlide> {
  @override
  void initState() {
    // widget.colorType.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            widget.color['gradient_end'],
            widget.color['gradient_start']
          ],
        ),
      ),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.black,
                  inactiveTrackColor: Colors.grey[200],
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.black,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.red.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                  activeTickMarkColor: Colors.grey,
                  inactiveTickMarkColor: Colors.grey[700],
                ),
                child: Slider(
                  min: 0,
                  max: 255,
                  divisions: 10,
                  value: widget.value,
                  onChanged: (value) {
                    widget.onChanged(value);
                  },
                ),
              ),
            ),
            Container(
              child: Text(
                widget.colorValue,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
