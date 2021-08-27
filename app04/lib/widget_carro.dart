import 'package:flutter/material.dart';

class WidgetCarro extends StatelessWidget {
  // Atributos que serão utilizados para receber
  // informações
  final String marca;
  final String modelo;
  final String foto;

  // Construtor
  // o primeiro método que é executado quando o objeto
  // da classe é instanciado
  const WidgetCarro(this.marca, this.modelo, this.foto, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Espaçamento (interno)
      padding: EdgeInsets.all(30),

      // Margens (externo)
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),

      // Decoração
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        // color: Colors.blue[100],
      ),

      width: MediaQuery.of(context).size.width * 0.9,
      // height: 300,

      child: Column(
        children: [
          Text(
            this.marca,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            this.modelo,
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Image.asset(this.foto)),
        ],
      ),
    );
  }
}
