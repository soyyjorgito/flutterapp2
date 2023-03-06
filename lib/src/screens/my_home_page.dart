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
        title: const Text('Uso del Drawer'),
      ),
      body: const Center(
        child: Text('Hola'),
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu),
        onPressed: () => _scaffKey.currentState?.openDrawer(),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountEmail: const Text("jorge08432@hotmail.com"),
        accountName: const Text("Jorge Eslava"),
        currentAccountPicture: const FlutterLogo(),
        otherAccountsPictures: <Widget>[
        ],
        onDetailsPressed:(){},
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Color.fromARGB(255, 2, 69, 145)],
          end: Alignment.bottomRight)
        ),
      ),
      ListTile(
        title: const Text("Inicio"),
        leading: const Icon(Icons.home),
        onTap: () => showHome(context),
      )
    ]));
  }
}

void showHome(BuildContext context) {
  Navigator.pop(context);
}
