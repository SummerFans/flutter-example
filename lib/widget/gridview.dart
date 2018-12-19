import 'package:flutter/material.dart';

class WidgetGridView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Grid View")),
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.black,
              alignment: Alignment.center,
              child: Text("SliverGridDelegateWithFixedCrossAxisCount",
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.black87,
              alignment: Alignment.center,
              child: Text("GridView.count",
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
            Container(
              width: double.infinity,
              height: 300.0,
              color: Colors.blue,
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, //纵轴三个子widget
                      childAspectRatio: 1.0 //宽高比为1时，子widget
                      ),
                  children: <Widget>[
                    Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                    Icon(Icons.airport_shuttle, color: Colors.white),
                    Icon(Icons.all_inclusive, color: Colors.white),
                    Icon(Icons.beach_access, color: Colors.white),
                    Icon(Icons.cake, color: Colors.white),
                    Icon(Icons.free_breakfast, color: Colors.white)
                  ]),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.black,
              alignment: Alignment.center,
              child: Text("SliverGridDelegateWithFixedCrossAxisCount",
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.black87,
              alignment: Alignment.center,
              child: Text("GridView.extent",
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
            Container(
              width: double.infinity,
              height: 200.0,
              color: Colors.yellow,
              child: GridView(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0, childAspectRatio: 1.5 //宽高比为2
                    ),
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.airport_shuttle),
                  Icon(Icons.all_inclusive),
                  Icon(Icons.beach_access),
                  Icon(Icons.cake),
                  Icon(Icons.free_breakfast),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.black,
              alignment: Alignment.center,
              child: Text("GridView.builder",
                  style: TextStyle(color: Colors.white, fontSize: 15.0)),
            ),
            // Container(
            //   child: GridView.builder(
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,
            //       childAspectRatio: 1.0,
            //     ),
            //     itemBuilder: (context, index) {
            //       //如果显示到最后一个并且Icon总数小于200时继续获取数据
            //       return null;
            //     },
            //   ),
            // )
          ],
        ));
  }
}
