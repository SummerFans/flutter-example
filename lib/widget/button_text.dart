import 'package:flutter/material.dart';

// 样式
class TextStyleWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Text("hello");
  }
}

// 对齐
class TextAlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("hello");
  }
}

// 文本分片 例如html：<p>Hello <span>world</span></p>
class TextSpanWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("hello");
  }
}

// 子树继承默认样式
class DefaultTextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("hello");
  }
}

// 使用字体
class UseFontWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("hello");
  }
}