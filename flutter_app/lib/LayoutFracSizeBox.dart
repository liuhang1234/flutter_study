import 'package:flutter/material.dart';

class LayoutFracSizeBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('百分比布局'),
      ),
      body: Container(
        color: Colors.grey,
        width: 200,
        height: 200,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft,
          widthFactor: 1.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }

}