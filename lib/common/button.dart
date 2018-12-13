import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  HomeButton(
      {Key key,
      this.textName: 'Button',
      this.color: Colors.black,
      @required this.onChanged})
      : super(key: key);

  final Color color;
  final String textName;
  final VoidCallback onChanged;

  void _handleTap() {
    onChanged();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      highlightColor: Colors.blue[700],
      child: Text('$textName', textAlign: TextAlign.center,),
      color: color,
      colorBrightness: Brightness.dark,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      onPressed: _handleTap,
    );
  }
}
