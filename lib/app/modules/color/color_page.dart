import 'package:color_picker/app/modules/color/components/color_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'color_controller.dart';

class ColorPage extends StatefulWidget {
  final String title;
  const ColorPage({Key key, this.title = "Color Picker"}) : super(key: key);

  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends ModularState<ColorPage, ColorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toUpperCase()),
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("FLUTTER - COLOR PICKER"),
            Text("Choose your color:"),
            Observer(
              builder: (_) => ColorSlide(
                value: controller.red,
                onChanged: (value) {
                  controller.changeRedValue(value);
                },
                controller: controller,
              ),
            ),
            Observer(
              builder: (_) => ColorSlide(
                value: controller.green,
                onChanged: (value) {
                  controller.changeGreenValue(value);
                },
                controller: controller,
              ),
            ),
            Observer(
              builder: (_) => ColorSlide(
                value: controller.blue,
                onChanged: (value) {
                  controller.changeBlueValue(value);
                },
                controller: controller,
              ),
            ),
            Observer(
              builder: (_) => Container(
                decoration: BoxDecoration(
                  color: controller.color,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
