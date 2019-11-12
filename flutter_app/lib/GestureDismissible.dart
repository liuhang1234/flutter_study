import 'package:flutter/material.dart';

//用Dismissible实现滑动删除
// 属性名                           类型                      说明

// onDismissed             DismissDirectionCallback        包裹的组件消失后的回调函数
// movementDuration               Duration                  定义组件消息的时长
// moResize                      VoidCallBack               组件大小改变的回调
// resizeDuration                 Duration                  组件大小改变时长
// child                          Widget                    包裹的view

class GestureDismissible extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String> items = List<String>.generate(30,(i) => '列表项${i +1}');
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text('滑动删除示例'),),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context,index){
            final item = items[index];
            // 返回一个可以被删除的列表项
            return Dismissible(
              key: Key(item),
              //被删除的回调
              onDismissed: (direction){
                //删除指定的item
                items.removeAt(index);
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('$item 这删除了')));
              },
              child: ListTile(title: Text('$item'),),
            );
          }),
    );
  }

}