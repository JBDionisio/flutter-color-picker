import 'color_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'color_page.dart';

class ColorModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ColorController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ColorPage()),
      ];

  static Inject get to => Inject<ColorModule>.of();
}
