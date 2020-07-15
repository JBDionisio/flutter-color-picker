import 'package:color_picker/app/shared/color_type.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'color_controller.g.dart';

class ColorController = _ColorControllerBase with _$ColorController;

abstract class _ColorControllerBase with Store {
  @observable
  double red = 0;

  @observable
  double green = 0;

  @observable
  double blue = 0;

  @computed
  Color get color => Color.fromRGBO(
        red.toInt(),
        green.toInt(),
        blue.toInt(),
        1,
      );

  @computed
  String get redInt => red.toInt().toString();

  @computed
  String get greenInt => green.toInt().toString();

  @computed
  String get blueInt => blue.toInt().toString();

  @action
  void changeRedValue(value) => red = value;

  @action
  void changeGreenValue(value) => green = value;

  @action
  void changeBlueValue(value) => blue = value;

  Map getColorType(ColorType colorType) => list[colorType.index];

  List<Map> list = [
    //red
    {
      "gradient_start": Colors.red[200],
      "gradient_end": Colors.red,
    },

    //green
    {
      "gradient_start": Colors.green[200],
      "gradient_end": Colors.green,
    },

    //blue
    {
      "gradient_start": Colors.blue[200],
      "gradient_end": Colors.blue,
    }
  ];
}
