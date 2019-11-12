import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// 网络请求
class DioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DioDemoState();
  }
}

class _DioDemoState extends State<StatefulWidget> {
  var _ipAddress = 'Unknown';

  _getIPAddress() async {
    //1
    var url = 'https://httpbin.org/ip';
    Dio _dio = Dio();
    String result;
    try {
      var response = await _dio.get(url); //2
      if (response.statusCode == HttpStatus.ok) {
        var data = jsonDecode(response.toString()); //3
        print(data);
        result = data['origin'];
      } else {
        result = 'Error getting IP status ${response.statusCode}';
      }
    } catch (exception) {
      result = exception.toString();
    }
    print(result);
    if (!mounted) return;
    setState(() {
      _ipAddress = result; //4
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var spacer = SizedBox(height: 10.0);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(6.0),
        child: Column(
          children: <Widget>[
            Text("ip 地址为"),
            spacer,
            Text('$_ipAddress'),
            spacer,
            RaisedButton(
              onPressed: _getIPAddress,
              child: Text('请求网络'),
            )
          ],
        ),
      ),
    );
  }
}
