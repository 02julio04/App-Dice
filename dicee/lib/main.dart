import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 1;
  int rightDice = 1;

  //Metodo para generar los dados aleatorios
  void LanzarDados()
  {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Dicee'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
              child: TextButton(child: Image.asset('images/dice$leftDice.png'),
              onPressed: (){
                LanzarDados();
              },
            ),
           ),
            Expanded(child: TextButton(
            child: Image.asset('images/dice$rightDice.png'),
              onPressed: (){
    LanzarDados();
    },
    ),
    ),
          ],
        ),
       ),
    ),
    );
    }
}