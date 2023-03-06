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
        title: const Text('Mostrar un SimpleDialog'),
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
          return SimpleDialog(
            title: const Text("Seleccionar"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            contentPadding: const EdgeInsets.only(left:50),
            titlePadding: const EdgeInsets.only(left:80),
            children: [
              ListTile(
                title: const Text("Eliminar"),
                leading: const Icon(Icons.delete),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Editar"),
                leading: const Icon(Icons.edit),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ]
          );
        });
  }
}
