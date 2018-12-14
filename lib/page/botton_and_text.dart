import 'package:flutter/material.dart';

import '../common/head.dart';

class ButtonAndText extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botton And Text"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Heading(
              title: "1.Text",
            ),
            new Heading(
              title: "1.Button",
            )
          ],
        )
      )
    );
  }
}