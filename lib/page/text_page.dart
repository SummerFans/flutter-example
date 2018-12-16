import 'package:flutter/material.dart';

import '../common/head.dart';
import '../widget/text.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Botton And Text"),
        ),
        body: Column(
          children: <Widget>[
            new Heading(
              title: "1.Text Style",
            ),
            new TextStyleWidget(),
            new Heading(
              title: "2.Text Align",
            ),
            new TextAlignWidget(),
            new Heading(
              title: "3.Text Span",
            ),
            new TextSpanWidget(),
            new Heading(
              title: "4.Text Use Font",
            ),
            new UseFontWidget(),
          ],
        ));
  }
}
