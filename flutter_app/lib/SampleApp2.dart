import 'package:flutter/material.dart';

class SampleApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      body: SampleApp2Page(),
    );
  }
}

class SampleApp2Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SampleApp2PageState();
  }
}

class _SampleApp2PageState extends State<SampleApp2Page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: 40,
          itemBuilder: (BuildContext context,int index){
        return Container(
            padding: const EdgeInsets.all(8.0),
            child: new Text('今天吃什么？')
        );
      })
    );
  }

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(new Padding(
          padding: new EdgeInsets.all(10.0), child: new Text("Row $i")));
    }
    return widgets;
  }
}
