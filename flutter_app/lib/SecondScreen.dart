import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('第二个页面'),),
      body: Center(
        child: RaisedButton(onPressed: (){
          Navigator.pop(context);
        },child: Text('返回页面'),),
        
      ),
    );
  }
  
}