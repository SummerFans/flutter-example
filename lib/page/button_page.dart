import 'package:flutter/material.dart';

/*
 * RaisedButton
 * FlatButton
 * OutlineButton
 */

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button"),
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: <Widget>[

              Text("Raised Button", style: TextStyle(fontSize: 20.0, height: 2.0)),
              RaisedButton(
                elevation: 2.0, //正常状态下的阴影
                highlightElevation: 20.0, //按下时的阴影
                disabledElevation: 0.0, // 禁用时的阴影
                onPressed: () {
                  print("click RaisedButton");
                },
                child: Text("hello"),
              ),
              Text("Flat Button", style: TextStyle(fontSize: 20.0, height: 2.0)),
              ButtonTheme(                    // 按钮样式
                minWidth: double.infinity,    // 最小按钮
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20.0),  // 按钮Paddding间距
                color: Colors.blue,                 // 颜色
                highlightColor: Colors.blue[700],   // 高亮颜色
                colorBrightness: Brightness.dark, // 按钮深色保证按钮文字颜色为浅色
                splashColor: Colors.red,           // 点击按钮变化色
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20.0)), // 按钮半径
                child: Text("FlatButton"),
                onPressed: () {
                  print("click FlatButton");
                },
              ),),
              Text("Outline Button", style: TextStyle(fontSize: 20.0, height: 2.0)),
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () {
                  print("click OutlineButton");
                },
              ),
              Text("Icon Button", style: TextStyle(fontSize: 20.0, height: 2.0)),
              IconButton(
                icon: Icon(Icons.thumb_up),
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print("click Icon Button");
                },
              ),
            ],
          ),
        ));
  }
}
