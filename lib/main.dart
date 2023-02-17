import 'package:flutter/material.dart';

void main() {
  String mesaj = "Başlık";
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Text"),
      ),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              var alert = AlertDialog(
                title: Text("AlertDialog Başlık"),
                content: Text("AlertDialog Metin"),
              );
              showDialog(context: context, builder: (BuildContext context)=>alert);
            },
            child: Text("Buton"),
          )
      ),
    );
  }
}