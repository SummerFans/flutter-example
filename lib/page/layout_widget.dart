import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {

  @override
  Widget build(context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Layout Widget")
     ),
     body: Center(child: Text("Example"),)
   ); 
  }
}