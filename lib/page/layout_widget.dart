import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {

  @override
  Widget build(context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Layout Widget")
     ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Row(
           crossAxisAlignment: CrossAxisAlignment.start,  
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text(" hello world ", style: TextStyle(fontSize: 30.0),),
            Text(" I am Jack "),
          ],
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("hello", style: TextStyle(color:Colors.white, height: 5.0, background: new Paint()..color=Colors.black), textAlign: TextAlign.left)
           ],
         ),
       Text("1.Flex",style: TextStyle(fontSize: 25.0)),
       Flex(
         direction: Axis.horizontal,
         children: <Widget>[
           Expanded(
             flex: 1,
             child: Container(
               child: Text("hello",style: TextStyle(color: Colors.white),),
               height: 30.0,
               color: Colors.red,
             ),
           ),
           Expanded(
             flex: 2,
             child: Container(
               height: 30.0,
               color: Colors.green,
             ),
           ),
           Expanded(
             flex: 2,
             child: Container(
               height: 30.0,
               color: Colors.blue,
             ),
           )
         ],
       ),
       Text("2.Wrap",style: TextStyle(fontSize: 25.0)),
       Wrap(
         spacing: 8.0, // 主轴(水平)方向间距
         runSpacing: 4.0, // 纵轴（垂直）方向间距
         alignment: WrapAlignment.center, //沿主轴方向居中
         children: <Widget>[
           new Chip(
             avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
             label: new Text("Hamilton")
           ),
           new Chip(
             avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('B')),
             label: new Text("Lafayette")
           ),
           new Chip(
             avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('C')),
             label: new Text("Mulligan")
           ),
           new Chip(
             avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('E')),
             label: new Text("Laurens")
           )
         ],
       ),
       Text("3.Wrap",style: TextStyle(fontSize: 25.0)),
       Flow(
        delegate: TestFlowDelegate(margin: EdgeInsets.all(10.0)),
        children: <Widget>[
          new Container(width: 80.0, height:80.0, color: Colors.red,),
          new Container(width: 80.0, height:80.0, color: Colors.green,),
          new Container(width: 80.0, height:80.0, color: Colors.blue,),
          new Container(width: 80.0, height:80.0,  color: Colors.yellow,),
          new Container(width: 80.0, height:80.0, color: Colors.brown,),
          new Container(width: 80.0, height:80.0,  color: Colors.purple,),
        ],
      )
       ]),
   ); 
  }
}


class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  TestFlowDelegate({this.margin});
  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置  
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
        //绘制子widget(有优化)  
        context.paintChild(i,
            transform: new Matrix4.translationValues(
                x, y, 0.0));
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  getSize(BoxConstraints constraints){
    //指定Flow的大小  
    return Size(double.infinity,200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}