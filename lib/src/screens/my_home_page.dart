import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: const Center(child:Text('Imagenes',style: TextStyle(color:Colors.black),)),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) {
            final url = "https://picsum.photos/id/$index/400/300";
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/second", arguments: url);
              },
              child: Hero(
                tag: url,
                child: Card(
                  child: FadeInImage(
                  image: NetworkImage(url),
                  placeholder: const AssetImage("assets/loading.gif"),
                  height: 300,
                )),
              ),
            );
          }),
    );
  }
}
