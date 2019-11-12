import 'package:flutter/material.dart';

class LayoutIndexedStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Stack"),),
        body: Center(
          child: IndexedStack(
            index: 4,//设置第几个显示
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