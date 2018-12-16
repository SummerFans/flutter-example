import 'package:flutter/material.dart';

// 样式
class TextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "style format",
      style: TextStyle(
        color: Colors.white, //  字体颜色
        fontSize: 12.0, // 字体尺寸
        fontFamily: 'monospace', //  字体
        fontWeight: FontWeight.bold, // 字体加粗
        letterSpacing: 10.0, // 字符间距
        wordSpacing: 10.0, // 单词间距
        decoration: TextDecoration.underline, // 装饰下划线
        decorationStyle: TextDecorationStyle.dashed,  // 下划线样式
        background: new Paint()..color = Colors.blue, // 背景颜色
      ),
    );
  }
}

// 对齐
class TextAlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Text Align "*10,
      textAlign: TextAlign.right,
      
    );
    // Text("align");
  }
}

// 文本分片 例如html：<p>Hello <span>world</span></p>
class TextSpanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      children: [
        TextSpan(
          text: 'URL:',
          style: TextStyle(
            color: Colors.green,
          )
        ),
        TextSpan(
          text: "http://www.baidu.com",
          style: TextStyle(
            color: Colors.red,
          )
        )
      ]
    ));
  }
}

// 子树继承默认样式
class DefaultTextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("default");
  }
}

// 使用字体
class UseFontWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("hello", style: TextStyle(
      fontSize: 50.0,
      fontFamily: 'CaroselloRegular'
    ),);
  }
}


// Button
