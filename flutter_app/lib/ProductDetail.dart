import 'package:flutter/material.dart';

import 'Product.dart';

class ProductDetail extends StatelessWidget{
  final Product product;


  ProductDetail({Key key,@required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('${product.title}'),),
      body: Padding(padding: EdgeInsets.all(40.0),child: Text('${product.description}'),),
    );
  }

}