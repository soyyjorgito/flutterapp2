
import 'package:flutter/material.dart';
import 'package:drawer/src/screens/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Demo', 
      initialRoute: "/",
      routes: 
      {
        "/": (BuildContext context) => const MyHomePage(title: 'Escoger imagen'),
      }
      );
  }
}
