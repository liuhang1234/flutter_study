import 'package:flutter/material.dart';

class LayoutDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('居中布局管理'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          padding: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.greenAccent, width: 8.0),
          ),
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.yellow,
                width: 8.0
              )
            ),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
