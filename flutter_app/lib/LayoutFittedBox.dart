import 'package:flutter/material.dart';

class LayoutFittedBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BoxFit缩放布局示例'),
      ),
      body: Container(
        color: Colors.grey,
        width: 150,
        height: 300,
        child: FittedBox(
          fit: BoxFit.none,
          alignment: Alignment.center,
          child: Container(
            child: Text("缩放布局",style: TextStyle(fontSize: 30),),
            color: Colors.blue,
          ) ,
        ),
      ),
    );
  }

}