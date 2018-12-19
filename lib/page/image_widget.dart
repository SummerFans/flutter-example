import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Image Widget")),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child:
                  Text("AssetImage", style: TextStyle(fontSize: 15.0)),
            ),
            Image(
              image: AssetImage("assets/images/banner_01.jpg"),
              width: 120.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child:
                  Text("FadeInImage AssetNetwork", style: TextStyle(fontSize: 15.0)),
            ),
            FadeInImage.assetNetwork(
              fadeInCurve: Curves.bounceIn,
              placeholder: 'assets/images/bg.png',
              image: "https://cdn-images-1.medium.com/max/2000/1*Tw3nQm56cAelelYUZ95leA.jpeg",
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child:
                  Text("Image.asset", style: TextStyle(fontSize: 15.0)),
            ),
            Image.asset(
              'assets/images/banner.jpg',
              width: 120.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child:
                  Text("NetworkImage", style: TextStyle(fontSize: 15.0)),
            ),
            Image(
              image: NetworkImage(
                  "https://cdn-images-1.medium.com/max/2000/1*Tw3nQm56cAelelYUZ95leA.jpeg"),
              color: Colors.red, // 指定混合色
              colorBlendMode: BlendMode.colorBurn, // 混合模式
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              child:
                  Text("Image.network", style: TextStyle(fontSize: 15.0)),
            ),
            Image.network(
                "https://cdn-images-1.medium.com/max/1600/1*xavlBnnHaqs7T6YDuqIX5w.png"),
          ],
        ));
  }
}
