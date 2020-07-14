import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'color_controller.g.dart';

class ColorController = _ColorControllerBase with _$ColorController;

abstract class _ColorControllerBase with Store {
  //RGB

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

  @action
  void changeRedValue(value) {
    red = value;
  }

  @action
  void changeGreenValue(value) {
    green = value;
  }

  @action
  void changeBlueValue(value) {
    blue = value;
  }
}
