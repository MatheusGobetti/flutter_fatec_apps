import 'package:flutter/material.dart';

void main() {
  // Iniciar a execução do App
  runApp(
      // Definir qual UI será carregada
      MaterialApp(title: 'Meu App', home: TelaPrincipal()));
}

// Tela principal
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App'),
      ),
      body: Center(
        child: Text('Meu primeiro App com Flutter'),
      ),
    );
  }
}
