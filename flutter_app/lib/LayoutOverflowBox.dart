import 'package:flutter/material.dart';


// 溢出父容器显示 
class LayoutOverflowBox extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("OverFlowBox设置"),),
      body:Container(
        color: Colors.greenAccent,
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(50.0),
        child: OverflowBox(
        alignment: Alignment.topLeft,
        maxHeight: 400,
        maxWidth: 400,
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.redAccent,
        ),),
      ) ,
    );
  }

}