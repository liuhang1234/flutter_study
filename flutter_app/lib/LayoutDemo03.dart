import 'package:flutter/material.dart';

// 对弈布局
class LayoutDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Alian对齐'),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            //左上角
            alignment: FractionalOffset.topLeft,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            //右上角
            alignment: FractionalOffset.topRight,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            //上中建角
            alignment: FractionalOffset.topCenter,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            alignment: FractionalOffset.centerLeft,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
          Align(
            alignment: FractionalOffset.centerRight,
            child: Image.asset(
              'images/1111.jpg',
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
