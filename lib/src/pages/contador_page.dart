import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {
  
 final _estiloText = new TextStyle(fontSize: 25);

  int _conteo = 0;

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
              Text('Número de clicks:', style: _estiloText),
              Text('$_conteo', style: _estiloText)
            ],
          ),
        ),
        floatingActionButton: crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //Ubicación del button
    );
  }


  Widget crearBotones () {

   return Row(
     mainAxisAlignment: MainAxisAlignment.end,
     children: <Widget>[
       SizedBox(width: 30.0),
      FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _reset),
      Expanded(child: SizedBox(width: 5.0)),
      FloatingActionButton(child: Icon(Icons.remove),onPressed: _sustaer),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar)
     ],
     );

  }

  void _agregar () {
    setState(() => _conteo++);
  }

  void _sustaer () {
    setState(() => _conteo--);
  }

  void _reset () {
    setState(() => _conteo=0);
  }


}