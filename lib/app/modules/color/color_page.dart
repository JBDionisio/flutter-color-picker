import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'color_controller.dart';

class ColorPage extends StatefulWidget {
  final String title;
  const ColorPage({Key key, this.title = "Color"}) : super(key: key);

  @override
  _ColorPageState createState() => _ColorPageState();
}

class _ColorPageState extends ModularState<ColorPage, ColorController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
              builder: (_) => Slider(
                min: 0,
                max: 100,
                value: controller.red,
                onChanged: (value) {
                  controller.changeRedValue(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
