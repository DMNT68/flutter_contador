import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final estiloText = new TextStyle(fontSize: 25);

  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de clicks:', style: estiloText),
              Text('$conteo', style: estiloText)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add, size: 30, ),
          onPressed: (){
            print('Hola mundo');
          },
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //Ubicación del button
    );
  }


}