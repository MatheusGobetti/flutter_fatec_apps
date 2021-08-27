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
              WidgetCarro('Audi', 'Q8', 'lib/imagens/audi_q8.jpg'),
              WidgetCarro('Audi', 'R8', 'lib/imagens/audi_R8.jpg'),
              WidgetCarro('BMW', 'M2', 'lib/imagens/bmw_m2.jpg'),
              WidgetCarro('Ferrari', '488', 'lib/imagens/ferrari_488.jpg'),
              WidgetCarro('Lamborghini', 'Huracan',
                  'lib/imagens/lamborghini_huracan.jpg'),
              WidgetCarro(
                  'Lamborghini', 'Urus', 'lib/imagens/lamborghini_urus.jpg'),
              WidgetCarro('Maserati', 'GTS', 'lib/imagens/maserati_gts.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
