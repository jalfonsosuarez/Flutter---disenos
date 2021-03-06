
import 'package:flutter/material.dart';


class BasicoPage extends StatelessWidget {

  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey );

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

          ],
        ),
      )
    );
  }

  Widget _crearImagen() {

    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://images.pexels.com/photos/814499/pexels-photo-814499.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _crearTitulo() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text( 'Lago con puente', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text( 'Se ve el puente reflejado.', style: estiloSubtitulo,)
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0,),
            Text ( '41', style: TextStyle( fontSize: 20.0 ), )
          ],
        ),
      ),
    );

  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
        _accion( Icons.share, 'SHARE' ),

      ],
    );

  }

  Widget _accion( IconData icon, String texto ){

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ) ),
      ],
    );

  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0 ),
        child: Text(
          'Sit nostrud deserunt magna esse aliqua commodo anim magna. Nisi commodo mollit ut tempor culpa ipsum nostrud voluptate duis reprehenderit occaecat do. Voluptate ex deserunt anim voluptate dolore est. Officia culpa incididunt excepteur eu minim. Aliquip exercitation sit commodo in enim eu quis sunt ut.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}