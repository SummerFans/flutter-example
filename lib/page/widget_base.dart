import 'package:flutter/material.dart';

class WidgetBasePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Base"),
      ),
      body: Center(
        child: Text("Example"),
      )
    );
  }
}