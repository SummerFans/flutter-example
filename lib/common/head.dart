import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  Heading({Key key, this.title: ''}):super(key:key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      alignment: Alignment.centerLeft,
      child: Text("$title", style: TextStyle(fontSize: 20.0)),
    );
  }
}
