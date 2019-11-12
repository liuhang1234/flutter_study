import 'package:flutter/material.dart';

class LayoutStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Center(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage("images/1111.jpg"),
              radius: 100,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black38
              ),
              child: Text("超级飞行员",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ],
        ),
      )
    );
  }

}