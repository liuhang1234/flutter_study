import 'package:flutter/material.dart';

class LayoutRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('水平布局示例'),
      ),
      body: Row(
      children: <Widget>[
        Expanded(child: Text('左侧文本',textAlign: TextAlign.left,)),
        Expanded(child: Text('中间文本',textAlign: TextAlign.center,)),
        Expanded(child: FittedBox(
          fit: BoxFit.contain,
          child: const FlutterLogo(),
        )),

      ],
      ),
    );
  }

}