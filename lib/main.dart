import 'package:flutter/material.dart';

import './page/widget_base.dart';
import './page/text_page.dart';
import './page/button_page.dart';
import './page/image_widget.dart';
import './page/layout_widget.dart';
import './page/scrollable.dart';
import './page/theme.dart';
import './page/animation.dart';

import './common/button.dart';

void main() => runApp(MyApp());

class FadeRoute extends PageRoute {
  FadeRoute({
    @required this.builder,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.opaque = true,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.maintainState = true,
  });

  final WidgetBuilder builder;

  @override
  final Duration transitionDuration;

  @override
  final bool opaque;

  @override
  final bool barrierDismissible;

  @override
  final Color barrierColor;

  @override
  final String barrierLabel;

  @override
  final bool maintainState;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) => builder(context);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
     return FadeTransition( 
       opacity: animation,
       child: builder(context),
     );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePage createState() => new _HomePage();
}

class _HomePage extends State<HomePage> {
  void _toWidgetBaseHandle() {
    Navigator.push(context, new FadeRoute(builder: (context) {
      return WidgetBasePage();
    }));
  }

  void _toTextHandle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return TextPage();
    }));
  }

  void _toButtonHandle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ButtonPage();
    }));
  }

  void _toImageAndTextHandle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ImageWidget();
    }));
  }

  void _toLayoutHandle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return LayoutWidget();
    }));
  }

  void _toScrollableHandle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ScrollablePage();
    }));
  }

  void _toThemeHandle() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) {
      return ThemePage();
    }));
  }

  void _toAnimationHandle() {
    Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) {
            return AnimationPage();
        }));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Example")),
        body: Container(
          color: Colors.black12,
          child: ListView(
            children: <Widget>[
              new HomeButton(
                color: Colors.lightBlue[400],
                textName: "Widget Base",
                onChanged: _toWidgetBaseHandle,
              ),
              new HomeButton(
                color: Colors.lightBlue[500],
                textName: "Text Widget",
                onChanged: _toTextHandle,
              ),
              new HomeButton(
                color: Colors.lightBlue[400],
                textName: "Button Widget",
                onChanged: _toButtonHandle,
              ),
              HomeButton(
                color: Colors.lightBlue[500],
                textName: "Image Widget",
                onChanged: _toImageAndTextHandle,
              ),
              new HomeButton(
                color: Colors.lightBlue[400],
                textName: "Layout Widget",
                onChanged: _toLayoutHandle,
              ),
              new HomeButton(
                color: Colors.lightBlue[500],
                textName: "Scrollable Widget",
                onChanged: _toScrollableHandle,
              ),
              new HomeButton(
                color: Colors.lightBlue[400],
                textName: "Theme",
                onChanged: _toThemeHandle,
              ),
              HomeButton(
                color: Colors.lightBlue[500],
                textName: "Animation",
                onChanged: _toAnimationHandle,
              )
            ],
          ),
        ));
  }
}
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
