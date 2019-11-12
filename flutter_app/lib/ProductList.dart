import 'package:flutter/material.dart';

import 'Product.dart';
import 'ProductDetail.dart';

// 带有参数跳转页面
class ProductList extends StatelessWidget {
 final List<Product> products ;

 ProductList({Key key,@required this.products}):super(key:key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表'),
      ),
      body: ListView.builder(itemBuilder: (context, itemIndex) {
        return ListTile(
          title: Text(products[itemIndex].title),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail(product: products[itemIndex])));
          },
        );
      }),
    );
  }
}
