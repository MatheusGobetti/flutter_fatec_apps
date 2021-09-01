import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'IMC',

    // TEMAS
    theme: ThemeData(
      primaryColor: Colors.blue.shade900,
      backgroundColor: Colors.grey.shade100,
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),

        //LabelStyle
        headline2: TextStyle(
          fontSize: 20,
          color: Colors.blue.shade900,
        ),

        //HintStyle
        headline3: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade500,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue.shade900,
          textStyle: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    ),

    home: TelaPrincipal(),
  ));
}

//
// TELA PRINCIPAL
// Stateful = stf
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.people,
              size: 120,
              color: Theme.of(context).primaryColor,
            ),
            campoTexto('Peso', null),
            campoTexto('Altura', null),
            botao('calcular'),
          ],
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO para entrada de dados
  //
  Widget campoTexto(rotulo, variavel) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        style: Theme.of(context).textTheme.headline1,
        controller: variavel,
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: Theme.of(context).textTheme.headline2,
          hintText: 'Entre com o valor',
          hintStyle: Theme.of(context).textTheme.headline3,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  //
  // BOTAO
  //
  Widget botao(rotulo) {
    return Container(
      width: 200,
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        child: Text(rotulo),
        onPressed: () {
          //evento que ocorre ao pressionar o botão
          print('botão pressionado!');
        },
        //onLongPress: (){
        //  print('botão pressionado + longo');
        //},
      ),
    );
  }
}
