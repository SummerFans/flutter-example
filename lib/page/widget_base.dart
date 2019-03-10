import 'package:flutter/material.dart';

import '../widget/set_state.dart';

class WidgetBasePage extends StatefulWidget {
  WidgetBasePage({Key key}) : super(key: key);

  _WidgetBasePage createState() => new _WidgetBasePage();
}

class _WidgetBasePage extends State<WidgetBasePage> {
  
  bool _active = false;

  void _showDialog(value) {
    setState(() {
      _active = value;
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("父widget管理状态"),
              content: Text("Status: $_active"),
              actions: <Widget>[
                new FlatButton(
                  child: Text("Submit"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widget Base"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: Text("1.StatelessWidget数据传递:",
                  style: TextStyle(fontSize: 20.0)),
            ),
            // 传递开始
            new LessState(
              title: this._active? "父状态：yes":"父状态：no",
              description: "my is description",
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text("2.StatefulWidget数据传递状态管理",
                  style: TextStyle(fontSize: 20.0)),
            ),
            // 父状态管理
            new ReceiveState(
              active: _active,
              onChange: _showDialog,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text("3.StatefulWidget自己管理状态",
                  style: TextStyle(fontSize: 20.0)),
            ),
            // 组件内状态
            new StateManger(),
          ],
        ));
  }
}
