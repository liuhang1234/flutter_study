import 'package:flutter/material.dart';

class LayoutStackPosition extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.network("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2973069531,657782944&fm=26&gp=0.jpg"),
            //用来定位，放置组件
            Positioned(child: Text("hi flutter",
              style: TextStyle(fontFamily: 'serif',
                  color: Colors.white,fontSize: 30),),
            bottom: 10.0,
            top: 30,
            right: 50.0,
            )
          ],
        ),
      )
    );
  }

}