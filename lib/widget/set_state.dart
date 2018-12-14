import 'package:flutter/material.dart';

// 无状态
class LessState extends StatelessWidget {
  LessState({Key key, this.title: '', this.description}) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("这个通过widget_base数据传递给set_state"),
          Text('Title: $title', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
            'Description: $description',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

// 有状态 父widget管理状态
class ReceiveState extends StatefulWidget {
  ReceiveState({Key key, this.active: false, @required this.onChange})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChange;

  _ReceiveState createState() => new _ReceiveState();
}

class _ReceiveState extends State<ReceiveState> {
  void _handle() {
    widget.onChange(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          alignment: Alignment.center,
          height: 50.0,
          
          decoration: BoxDecoration(
            color: widget.active ? Colors.blue : Colors.black38,
          ),
          child: Center(
            child: Text(
          "父widget管理状态",
          textAlign: TextAlign.right,
          style: new TextStyle(
            color: Colors.white
          ),
        ))),
        onTap: _handle);
  }
}

// 有状态 widget自己状态管理
class StateManger extends StatefulWidget {
  StateManger({Key key}):super(key: key);
  
  _StateManger createState() => new _StateManger();
}

class _StateManger extends State<StateManger> {

  bool active = false;
  void _handle() {
    setState(() {
        active = !active;
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: Text("widget自己管理状态"),
              content: Text("Status: $active"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  )
              ],
            );
          } 
        );
    });
  } 

  @override
  Widget build(BuildContext build) {
    return GestureDetector(
      onTap: _handle,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: this.active? Colors.blue : Colors.black38,
        ),
        alignment: Alignment.center,
        child: Center(child: Text("widget自己管理状态", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
