import 'package:flutter/material.dart';

class LayoutDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer控件'),
      ),
      body: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('liuhang'),
              accountEmail: Text('617847070@qq.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/1111.jpg'),
              ),
              onDetailsPressed: () {
                print('onDetailsPressed');
              },
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.asset('iamges/1111.jpg'),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.photo),
              ),
              title: Text('相册'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.wifi),
              ),
              title: Text('免流量'),
            )
          ],
        ),
      ),
    );
  }
}
