import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  State<BottomNavigation> createState() {
    // TODO: implement createState
    return _BottomNavigation();
  }
}

class _BottomNavigation extends State<BottomNavigation> {
  int _selectedIndex = 2;
  final _widgetOptions = [
    Text('Index 0:信息'),
    Text('Index 1:通讯录'),
    Text('Index 2:我的'),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')),
    BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('通讯录')),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), title: Text('我的')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print("index = $index" + "_select =$_selectedIndex ");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigation示例'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }
}
