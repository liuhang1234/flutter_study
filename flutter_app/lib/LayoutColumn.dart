import 'package:flutter/material.dart';

class LayoutColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('垂直布局'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Flutter',textAlign: TextAlign.right,),
          Text('垂直布局',style: TextStyle(fontSize: 50,), textAlign: TextAlign.left,),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: FlutterLogo(),
            ),
          )
        ],
      ),
    );
  }

}