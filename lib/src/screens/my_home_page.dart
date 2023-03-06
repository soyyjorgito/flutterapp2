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
        title: const Text('Mostrar un Snackbar'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            final snackBar = SnackBar(
                backgroundColor: Colors.black,
                content: Row(
                  children: const [
                    Icon(Icons.thumb_up,color: Colors.white),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Elemento eliminado')
                  ],
                ),
                action: SnackBarAction(
                    label: "Cancelar",
                    onPressed: () {
                      print("Cancelado");
                    }));

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Mostrar SnackBar'),
        ),
      ),
    );
  }
}
