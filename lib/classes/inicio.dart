import 'package:flutter/material.dart';
import './Responsive/tamanos.dart';

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  createState() => _Iniciar();
}

class _Iniciar extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    double ancho = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    final classTam = new Tamano(ancho, alto);

    return Container(
      color: Colors.indigo,
      child: Column(
        children: [
          _sup(classTam),
          _inf(classTam),
        ],
      ),
    );
  }

  _sup(tamano) {
    //tamano.altoPadre = 0.8; //set
    //tamano.anchoPadre = 0.9; //set
    return Container(
      color: Colors.white,
      height: tamano.hObjeto(0.5), //get
      width: tamano.wObjeto(0.9), //get
      //alignment: Alignment.center,
      child:  Column(
        children: [
          _cajaArriba(tamano),
          _cajaAbajo(tamano)
        ],
      ),
    );
  }
  _cajaArriba(tamano) {
    return Container(
      height: tamano.hChild(0.5),
      width: tamano.wChild(.7),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: 
          BorderRadiusDirectional.only(
            bottomStart: Radius.circular(50.0),
            bottomEnd: Radius.circular(50.0),
        ),
      ),
      child: Text('Caja Arriba\nAlto: ${tamano.hChild(0.5).toStringAsFixed(2)}\nAncho: ${tamano.wChild(0.7).toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 15,
          color: Colors.lightBlue,
          decoration: TextDecoration.none
        ),
      ),
    );
  }
  _cajaAbajo(tamano) {
    return Container(
      height: tamano.hChild(0.5),
      width: tamano.wChild(),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: 
          BorderRadiusDirectional.only(
            topStart: Radius.circular(20.0),
            topEnd: Radius.circular(20.0),
          ),
      ),
      
      child: Text('Caja Abajo\nAlto: ${tamano.heiChild.toStringAsFixed(2)}\nAncho: ${tamano.wChild().toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          decoration: TextDecoration.none
        ),
      ),
    );
  }

  _inf(tamano) {
    // tamano.altoPadre = 0.2; //set 
    // tamano.anchoPadre = 0.4; //set 

    return Container(
      color: Colors.white,
      height: tamano.hObjeto(0.5), //get 
      width: tamano.wObjeto(0.95), //get
      child: Column(
        children: [
          _cuadro1(tamano),
          _cuadro2(tamano),
        ],
      ),
    );
  }

  _cuadro1(tamano) {

    return Container(
      height: tamano.hChild(0.45),
      width: tamano.wChild(0.95),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomStart: Radius.circular(30.0),
          bottomEnd: Radius.circular(30.0)
        ),
        color: Colors.lightBlueAccent,
      ),

      alignment: Alignment.center,
      child: Text('Caja Centrar baja\nAlto: ${tamano.heiChild.toStringAsFixed(3)}\nAncho: ${tamano.widChild.toStringAsFixed(3)}',
        style: 
          TextStyle(
            fontSize: 14,
            color: Colors.white,
            decoration: TextDecoration.none
            
        ),
      ),
    );
  }
  _cuadro2(tamano) {
    Tamano nuevos_Tamanos = new Tamano(tamano.wChild(0.6339), tamano.hChild(0.55));
    //print('${tamano.widChild}, ${tamano.heiChild}');
    //print('${tamano.wChild()}, ${tamano.hChild()}');
    return Container(
      color: Colors.black,
      height: tamano.hChild(0.55),
      width: tamano.hChild(0.64),
      child: Row(
        children: [
          _left0(nuevos_Tamanos),
          _right0(nuevos_Tamanos),
        ],
      ),
    );
  }

  _left0(nTam) {
    
    return Container(
      height: nTam.hObjeto(1.0),
      width: nTam.wObjeto(0.4),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(30.0),
          bottomStart: Radius.circular(30.0),
        ),
      ),
      alignment: Alignment.center,
      child: Text('Izquierda\nAlto: ${nTam.heiObjet.toStringAsFixed(3)}\nAncho: ${nTam.widObjet.toStringAsFixed(3)}',
        style:
          TextStyle(
            fontSize: 13,
            decoration: TextDecoration.none,
            color: Colors.black,
        ),
      ),
    );
  }
  _right0(nTam) {
    return Container(
      height: nTam.hObjeto(1.0),
      width: nTam.wObjeto(0.6),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topEnd: Radius.circular(30.0),
          bottomEnd: Radius.circular(30.0) 
        ),
        color: Colors.blue,
      ),
      alignment: Alignment.center,
      child: Text('Derecha\nAlto: ${nTam.heiObjet.toStringAsFixed(3)}\nAncho: ${nTam.widObjet.toStringAsFixed(3)}',
        style: 
          TextStyle(
            fontSize: 13,
            decoration: TextDecoration.none,
            color: Colors.white,
          ),
      ),
    );
  }

}  
