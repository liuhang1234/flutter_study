import 'package:flutter/material.dart';

class RouterFirst extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(title: Text('First'),),
      body: Center(
        child: RaisedButton(
            child: Text('跳转到第二页'),
            onPressed: (){
              print("tiaozhuan");
              Navigator.pushNamed(context, '/Second');
        }),
      ),
    );
  }

}