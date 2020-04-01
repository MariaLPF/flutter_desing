import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/bottons_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //Cambia el color del statusBar
      statusBarIconBrightness: Brightness.light, //Cambia el color de los iconos del statusBar
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'buttons',
      routes: {
        'basic'   : (BuildContext context) => BasicPage(),
        'scroll'  : (BuildContext context) => ScrollPage(),
        'buttons' : (BuildContext context) => ButtonsPage()
      },
    );
  }
}