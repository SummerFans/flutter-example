import 'package:flutter/material.dart';

import '../widget/listview.dart';
import '../widget/gridview.dart';

import '../common/button.dart';

class ScrollablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _toListViewHandle() {
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        return WidgetListView();
      }));
    }

    void _toGridViewHandle() {
      Navigator.push(context, new MaterialPageRoute(builder: (context) {
        return WidgetGridView();
      }));
    }

    return Scaffold(
        appBar: AppBar(title: Text("Scrollable")),
        body: ListView(
          children: <Widget>[
            HomeButton(
              color: Colors.lightBlue[500],
              textName: "ListView",
              onChanged: _toListViewHandle,
            ),
            HomeButton(
              color: Colors.lightBlue[400],
              textName: "GridView",
              onChanged: _toGridViewHandle,
            )
          ],
        ));
  }
}

// Scrollbar(
//   child: SingleChildScrollView(
//     // scrollDirection: Axis.horizontal,

//     // 阅读方向(文字从左往右阅读还是相反,取决于语言环境，阿拉伯语就是从右到左)) 但需要scrollDirection属性为Axis.horizontal(横向)
//     // reverse: false,

//     // 是否使用widget tree中默认的PrimaryScrollController，如果没指定controller默认为true
//     // primary: true,
//     child: Column(
//       children: <Widget>[
//         Row(
//           children: <Widget>[
//             Container(child: Text("hello"), height: 1000.0)
//           ],
//         )
//       ],
//     ),
//   ),
// ));
