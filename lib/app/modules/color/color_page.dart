import 'package:color_picker/app/modules/color/components/color_slider.dart';
import 'package:color_picker/app/shared/color_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
      body: Column(
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
              color: controller.getColorType(ColorType.red),
              colorValue: controller.redInt,
            ),
          ),
          Observer(
            builder: (_) => ColorSlide(
              value: controller.green,
              onChanged: (value) {
                controller.changeGreenValue(value);
              },
              color: controller.getColorType(ColorType.green),
              colorValue: controller.greenInt,
            ),
          ),
          Observer(
            builder: (_) => ColorSlide(
              value: controller.blue,
              onChanged: (value) {
                controller.changeBlueValue(value);
              },
              color: controller.getColorType(ColorType.blue),
              colorValue: controller.blueInt,
            ),
          ),
          Observer(
            builder: (_) => Container(
              child: InkWell(
                borderRadius: BorderRadius.circular(60),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: controller.color,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 45),
                  height: 100,
                  child: Icon(
                    Icons.favorite_border,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
