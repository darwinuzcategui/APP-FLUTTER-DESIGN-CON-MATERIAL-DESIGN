import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final urlImg =
      'https://photocontest.fiba.basketball/wp-content/uploads/2019/02/B736A66F-9490-4FD4-8315-BBFD37F8213D-1024x681.jpeg';

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(urlImg),
        height: 310,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cancha de Baloncesto',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Cancha en un desierto',
                    style: estiloSubTitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star_border, color: Colors.orangeAccent, size: 50.0),
            Text(
              '54',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Llamar'),
        _accion(Icons.near_me, 'RUTA'),
        _accion(Icons.share, 'Compartir'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.orange,
          size: 40.0,
        ),
        SizedBox(height: 10.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.orangeAccent),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Estoy bajando el escritorio remoto para windows quedan 33 min para bajar 28 min ahora min me estoy conectando pero es demasiada lento es imposible trabajar con el escritorio remoto',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
