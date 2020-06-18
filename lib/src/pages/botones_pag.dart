import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _baraDeBotonesNavegacion(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(78, 52, 46, 1.0),
            Color.fromRGBO(78, 52, 46, 0.8)
          ])),
    );

    final cajaNaranja = Transform.rotate(
        angle: -pi / 6.0,
        child: Container(
          height: 320.0,
          width: 320.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 179, 0, 1.0),
              Color.fromRGBO(244, 208, 63, 1.0),
            ]),
          ),
        ));

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaNaranja,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Prueba de Transaction.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Transaction dentros de varias Categoria',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  Widget _baraDeBotonesNavegacion(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(78, 52, 46, 1.0),
          primaryColor: Colors.orangeAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(161, 136, 127, 1.0)))),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_today,
            size: 35.0,
          ),
          //title: Text('hola1'),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bubble_chart,
            size: 35.0,
          ),
          // title: Text('hola2')
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.android,
            size: 35.0,
          ),
          //title: Text('hola3'),
          title: Container(),
        ),
      ]),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.blue,Icons.border_all,'General'),
          _crearBotonRedondeado(Colors.purpleAccent,Icons.directions_bus,'Bus'),
        ]),
        TableRow(children: [
         _crearBotonRedondeado(Colors.redAccent,Icons.do_not_disturb,'NO MOLESTAR'),
         _crearBotonRedondeado(Colors.yellow,Icons.donut_small,'Otra Cosa'),
         ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.black54,Icons.drafts,'Mensaje'),
         _crearBotonRedondeado(Colors.pink,Icons.cloud,'Nube'),
        ]),
        TableRow(children: [
         _crearBotonRedondeado( Colors.blueAccent, Icons.movie_filter, 'Entretenimineto' ),
            _crearBotonRedondeado( Colors.green, Icons.assignment_ind, 'Fotos' ),
        ]),
      ],
    );
  
  }


  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
  //  return BackdropFilter(
   //   filter: ImageFilter.blur(sigmaX:0.5,sigmaY:0.5),
     //     child: Container(
     return ClipRect(
      //child: BackdropFilter(
      //  filter: ImageFilter.blur( sigmaX: 10.0, sigmaY: 10.0 ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
          color: Color.fromRGBO(93, 52, 46, 0.7),
          borderRadius: BorderRadius.circular(35.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0,),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child:Icon(icon, color:Colors.white,size:45.0,)
              ),
              Text(texto,style: TextStyle(color:color),),
            SizedBox( height: 5.0 )
            ],
          ),
 
        ),
      );
    //);
  }
  }

/*
BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.calendar_today),
            //title: Text('hola1'),
            title: Container(),
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.call_made),
            // title: Text('hola2')
            title: Container(),
          ),
           BottomNavigationBarItem(
            icon:Icon(Icons.android),
             //title: Text('hola3'),
             title: Container(),
          ),

        ]),
        */
