import 'package:flutter/material.dart';

class RouterSecond extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('第二页'),),
      body: Center(
        child: RaisedButton(onPressed: (){
          _navigateToSecondPage(context);
        }),
      ),
    );
  }
  _navigateToSecondPage(BuildContext context) async {
    dynamic customArgumnets = await Navigator.pushNamed(context, '/Second',
        arguments: CustomArgumnets('Android进阶之光'));//1
    print(customArgumnets.content);
  }
}

class CustomArgumnets {
  String content;
  CustomArgumnets(this.content);
}