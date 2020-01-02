import 'package:diseno/src/pages/basico_page.dart';
import 'package:diseno/src/pages/buttons_page.dart';
import 'package:diseno/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';


void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'button',
      routes: {
        'basico'           : (BuildContext context) => BasicoPage(),
        'scroll'           : (BuildContext context) => ScrollPage(),
        'button'           : (BuildContext context) => ButtonsPage(),
      },


    );
  }
}