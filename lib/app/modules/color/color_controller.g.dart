// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ColorController on _ColorControllerBase, Store {
  final _$redAtom = Atom(name: '_ColorControllerBase.red');

  @override
  double get red {
    _$redAtom.reportRead();
    return super.red;
  }

  @override
  set red(double value) {
    _$redAtom.reportWrite(value, super.red, () {
      super.red = value;
    });
  }

  final _$greenAtom = Atom(name: '_ColorControllerBase.green');

  @override
  double get green {
    _$greenAtom.reportRead();
    return super.green;
  }

  @override
  set green(double value) {
    _$greenAtom.reportWrite(value, super.green, () {
      super.green = value;
    });
  }

  final _$blueAtom = Atom(name: '_ColorControllerBase.blue');

  @override
  double get blue {
    _$blueAtom.reportRead();
    return super.blue;
  }

  @override
  set blue(double value) {
    _$blueAtom.reportWrite(value, super.blue, () {
      super.blue = value;
    });
  }

  final _$_ColorControllerBaseActionController =
      ActionController(name: '_ColorControllerBase');

  @override
  void changeRedValue(dynamic value) {
    final _$actionInfo = _$_ColorControllerBaseActionController.startAction(
        name: '_ColorControllerBase.changeRedValue');
    try {
      return super.changeRedValue(value);
    } finally {
      _$_ColorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeGreenValue(dynamic value) {
    final _$actionInfo = _$_ColorControllerBaseActionController.startAction(
        name: '_ColorControllerBase.changeGreenValue');
    try {
      return super.changeGreenValue(value);
    } finally {
      _$_ColorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBlueValue(dynamic value) {
    final _$actionInfo = _$_ColorControllerBaseActionController.startAction(
        name: '_ColorControllerBase.changeBlueValue');
    try {
      return super.changeBlueValue(value);
    } finally {
      _$_ColorControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
red: ${red},
green: ${green},
blue: ${blue}
    ''';
  }
}
