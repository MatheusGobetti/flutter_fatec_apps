import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'App',
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.house,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        'A',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.purpleAccent,
                    child: Center(
                      child: Text(
                        'B',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 479,
                        child: Center(
                          child: Text(
                            'C',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'D',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'E',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
