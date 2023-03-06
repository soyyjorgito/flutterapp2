import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color:Colors.black,
        ),
         title: const Text('Visor de imagen',style: TextStyle(color:Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Hero(
        tag: url,
        child: Image.network(url),
      ),
    );
  }
}
