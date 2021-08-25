import 'package:flutter/material.dart';

class WidgetCarro extends StatelessWidget {
  const WidgetCarro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.blue[100],
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
    );
  }
}
