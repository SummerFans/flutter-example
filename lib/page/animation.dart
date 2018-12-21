import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key key}):super(key: key);

   @override
  _AnimationPage createState() => new _AnimationPage();
}

class _AnimationPage extends State<AnimationPage> with SingleTickerProviderStateMixin{
  
  Animation<double> animation;
  AnimationController controller;
  bool palyAnimation = false;
  double widthValue = 0;

  @override
  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    //图片宽高从0变到300
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceOut)
    ..addListener((){
      this.setState((){
        this.widthValue = animation.value*150;
      });
    })
    ..addStatusListener((AnimationStatus status){
    });
   
    // animation.addStatusListener((AnimationStatus status){});
    // animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
    //   ..addListener(() {
    //     setState(()=>{});
    //   });
    //启动动画(正向执行)
    controller.repeat();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amination")
      ),
      body: Center(child:Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: this.widthValue,
        // width: animation.value * 100,
      ))
    );
  }
  
  @override
  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}


/**
 * 
 * new Center(
       child: Image.asset("./assets/images/nike.jpg",
          width: animation.value,
          height: animation.value
      )
    ),
    floatingActionButton: IconButton(
      icon: Icon(Icons.battery_full),
      // highlightColor: Colors.green,
      onPressed: (){
        this.palyAnimation = !this.palyAnimation;
        this.palyAnimation?controller.reverse():controller.forward();
      },
    ),s
 */