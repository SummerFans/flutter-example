import 'package:flutter/material.dart';

class WidgetListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    bool _isbool = false;
    
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text("SingleChildScrollView",
                    style: TextStyle(fontSize: 20.0)),
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            color: Colors.black12,
                            height: 200.0,
                          ),
                        ),
                      ),
                      height: 100.0,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 100.0,
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              margin: EdgeInsets.all(10.0),
                              width: 1000.0,
                              color: Colors.black12),
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text("ListView", style: TextStyle(fontSize: 20.0)),
              ),
              Container(
                height: 300.0,
                color: Colors.yellow,
                child: ListView(
                  // itemExtent:100.0, // 指定范围(高or宽)，这样省去动态计算提升性能
                  // shrinkWrap: false, // 是否根据ListView容器内的总长度设置LiveView的长度，如果是true表示无限(适合无限list)
                  // addAutomaticKeepAlives: true, // 子Widget是否包含在AutomaticKeepAlive中，用于典型懒加载，如果自己维护list(widget)则设置false
                  // addRepaintBoundaries: false, // 子widget包裹在RepaintBoundary，避免重绘，如果重绘色块或文字建议false(因为开销小)，如果自己维护list建议false
                  children: <Widget>[Text("hell")],
                ),
              ),

              /**
           * ListView.builder
           */
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child:
                    Text("ListView.builder", style: TextStyle(fontSize: 20.0)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                child: Text(
                  "当widget显示时候才会创建",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              Container(
                height: 200.0,
                color: Colors.black12,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text("$index"));
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Text("ListView.separated",
                    style: TextStyle(fontSize: 20.0)),
              ),
              Container(
                height: 300.0,
                color: Colors.white,
                child: ListView.separated(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        leading: Container(
                          width: 20.0,
                          height: 20.0,
                          color: _isbool ? Colors.green : Colors.blue,
                        ),
                        title: Text("$index"),
                        subtitle: Text("text is $index"));
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    Divider t1 = Divider(color: Colors.blue);
                    Divider t2 = Divider(color: Colors.green);

                    _isbool = index % 2 == 0 ? true : false;

                    return index % 2 == 0 ? t1 : t2;
                  },
                ),
              ),

              /**
           * GridView
           */
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child:
                    Text("ListView.builder", style: TextStyle(fontSize: 20.0)),
              ),
            ],
          ),
        ));
  }
}
