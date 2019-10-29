import 'package:flutter/material.dart';
import 'package:otec_concepcion_capacitacion/src/pages/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.red,
      primaryColor: Color.fromRGBO(237, 74, 41, 1.0),
    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new HomePage(),
        title: new Text(
          'Mundo Diferente ${DateTime.now().year}',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Color.fromRGBO(237, 74, 41, 1.0)),
        ),
        image: Image.asset(
          'assets/logomd.png',
        ),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Color.fromRGBO(237, 74, 41, 1.0));
  }
}
