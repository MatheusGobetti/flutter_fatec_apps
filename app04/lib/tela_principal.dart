import 'package:app04/widget_carro.dart';
import 'package:flutter/material.dart';
import 'package:app04/widget_carro.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: SingleChildScrollView(
        child: Container(
          // width: MediaQuery.of(context).size.width * 0.5,
          width: double.infinity,
          child: Column(
            children: [
              WidgetCarro(),
              WidgetCarro(),
              WidgetCarro(),
              WidgetCarro(),
            ],
          ),
        ),
      ),
    );
  }
}
