import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavDialog extends StatefulWidget {
  @override
  _FavDialogState createState() => _FavDialogState();
}

class _FavDialogState extends State<FavDialog>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.bottomCenter,
        child: Material(
          color: Colors.transparent,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: Container(
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(15.0),
                height: 180.0,
                decoration: ShapeDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          top: 30.0, left: 20.0, right: 20.0),
                      child: Text(
                        "Are you sure? do you want to favorite this color?",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    )),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 10.0, top: 10.0, bottom: 10.0),
                          child: ButtonTheme(
                              height: 35.0,
                              minWidth: 110.0,
                              child: RaisedButton(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  splashColor: Colors.white.withAlpha(40),
                                  child: Text(
                                    'Cancel'.toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0),
                                  ),
                                  onPressed: () {
                                    controller
                                        .reverse()
                                        .whenComplete(() => Modular.to.pop());
                                  })),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ButtonTheme(
                              height: 35.0,
                              minWidth: 110.0,
                              child: RaisedButton(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                splashColor: Colors.white.withAlpha(40),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Save'.toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                ),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    )),
                  ],
                )),
          ),
        ),
      );
}
