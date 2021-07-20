import 'package:flutter/material.dart';
import './classes/inicio.dart';

void main() { 
  runApp(MyApp());  
}

class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'inicio',
      routes: {
        'inicio': (BuildContext context) => Inicio(),
        
      },
    );
  }
}
