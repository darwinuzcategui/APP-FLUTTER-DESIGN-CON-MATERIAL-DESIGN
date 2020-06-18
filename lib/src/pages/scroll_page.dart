import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(),
      ],
    ));
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    // final  AssetImage assetsnombre = new AssetImage('assets/fondo.png');
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/fondo.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.orangeAccent, fontSize: 50.0);
    return SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('32°', style: estiloTexto),
          Text('Jueves', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size:80.0, color: Colors.orangeAccent),
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape:StadiumBorder(),
          color: Colors.orangeAccent,
          textColor: Colors.white,
          child:Padding( 
          padding:EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child:Text('Bienvenidos',style: TextStyle(fontSize: 25.0),
          ),
          ),
          onPressed: (){},
        ),
      ),
    );
}
}
