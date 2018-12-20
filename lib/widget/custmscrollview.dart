import 'package:flutter/material.dart';

class WidgetCustomScrollView extends StatefulWidget {
  WidgetCustomScrollView({Key key}) : super(key: key);

  _WidgetCustomScrollView createState() => new _WidgetCustomScrollView();
}

class _WidgetCustomScrollView extends State<WidgetCustomScrollView> {
  ScrollController _controller = new ScrollController();

  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.offset);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        controller: _controller,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            brightness: Brightness.dark,
            title: Text("Custom Scroll View"),
            flexibleSpace: FlexibleSpaceBar(
              // title: const Text('Custom Scroll View'),
              // centerTitle: true,
              collapseMode: CollapseMode.parallax,
              background: Image.asset(
                "./assets/images/nike.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: new SliverGrid(
              //Grid
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //Grid按两列显示
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ),
              delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  //创建子widget
                  return new Container(
                    alignment: Alignment.center,
                    color: Colors.cyan[100 * (index % 9)],
                    child: new Text('grid item $index'),
                  );
                },
                childCount: 4,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: new SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              //创建列表项
              return new Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: new Text('list item $index'),
              );
            }, childCount: 50 //50个列表项
                ),
          ),
        ],
      ),
    );
  }
}
