import 'package:flutter/material.dart';


class ImageWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget")
      ),
      body: ListView(
        children: <Widget>[
          Image(
          image: AssetImage("assets/images/banner_01.jpg"),
            width: 120.0,
          ),
          Image.asset('assets/images/banner.jpg',
          width:120.0,
          ),
          FadeInImage.assetNetwork(
            fadeInCurve: Curves.bounceIn,
            placeholder: 'assets/images/bg.png',
            image:"https://cdn-images-1.medium.com/max/2000/1*Tw3nQm56cAelelYUZ95leA.jpeg",
          ),
          Image(
            image: NetworkImage("https://cdn-images-1.medium.com/max/2000/1*Tw3nQm56cAelelYUZ95leA.jpeg"),
            color: Colors.red,  // 指定混合色
            colorBlendMode: BlendMode.colorBurn,  // 混合模式
          ),
          Image.network("https://cdn-images-1.medium.com/max/1600/1*xavlBnnHaqs7T6YDuqIX5w.png"),
        ],
      )
    );
  }
}