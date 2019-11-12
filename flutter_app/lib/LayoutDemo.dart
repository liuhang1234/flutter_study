import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget container = Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  border: Border.all(width: 10.0, color: Colors.blueGrey),
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(8.0))
              ),
              margin: const EdgeInsets.all(4.0),
              child: Image.asset("images/1111.jpg"),
            ),
            ),
            Expanded(child: Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                  border: Border.all(width: 10.0, color: Colors.blueGrey),
                  borderRadius: const BorderRadius.all(
                      const Radius.circular(8.0))
              ),
              margin: const EdgeInsets.all(4.0),
              child: Image.asset("images/1111.jpg"),
            ))
          ],
          ),

          Row(
            children: <Widget>[
              Expanded(child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset("images/1111.jpg"),
              )),
              Expanded(child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius: const BorderRadius.all(
                        const Radius.circular(8.0))
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset("images/1111.jpg"),
              ))


            ],
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Container容器"),
      ),
      body: container,
    );
  }

}
