import 'package:flutter/material.dart';
// 点击事件
class GestureEvent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Gesture'),),
      body: Center(
        child: MyButton(),
      ),
    );
  }
}
class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            SnackBar(content: Text('您已按下onTap')));
      },
        onDoubleTap: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('您已按下onDoubleTap')));
        },
        onLongPress: (){
          Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('您已按下onLongPress')));
        },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text("测试按钮"),
      )
    );
  }

}