import 'package:flutter/material.dart';
import 'package:drawer/main.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: const Text('Mostrar un AlertDialog'),
      ),
      body: Center(
          child: TextButton(
        child: const Text("Mostrar"),
        onPressed: () {
          _showDialog(context);
        },
      )),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
           title: const Center(child: Text('Alerta')),
            content: const Text("¿Seguro deseas eliminar el elemento?"),
            actions: [
              Column(
                children: [
                  TextButton(
                    child: const Text("No"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: const Text("Si"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              )
            ],
            actionsAlignment: MainAxisAlignment.center,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          );
        });
  }
}
