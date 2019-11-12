import 'package:flutter/material.dart';
// 练手项目
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('武当山风景区',style: TextStyle(color: Colors.black38),),),
      body: ListView(
        children: <Widget>[
          Image.asset('images/1111.jpg',width: 500,height: 520,fit: BoxFit.none,
          ),
          address,
          buttonContainer,
          textContainer
        ],
      ),
    );
  }


  Widget address = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      //横向排列
      children: <Widget>[
        Expanded(
          child: Column(
            //纵向排列
            crossAxisAlignment: CrossAxisAlignment.start, //顶部对齐
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "风景区地址",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '上海市哈哈哈哈哈',
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('66')
      ],
    ),
  );
  
  //构建按钮组中的单个按钮，参数为图标及文本
  static Column buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min, //垂直方向最小化,
      mainAxisAlignment: MainAxisAlignment.center, //居中对齐
      children: <Widget>[
        Icon(
          icon,
          color: Colors.lightGreen[600],
        ), //上面图标部分
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        ),
      ],
    );
  }


  Widget textContainer = Container(
      padding: const EdgeInsets.all(8.0),
      child: Text('一是加强共建“一带一路”倡议同希腊建设重要国际物流中转枢纽战略对接，早日将比雷埃夫斯港建设成为地中海地区最大集装箱中转港，充分发挥其海－铁联运枢纽作用，'
          '提升中欧陆海快线的运能。二是扩大双向贸易和投资规模，加强电力、通信、制造业、金融等领域合作。中方愿进口更多希腊优质农产品，鼓励更多有实力的中国企业赴希腊投资兴业。三是深化人文交流。要守正创新，既要在古人留给我们的丰厚文化遗产中交流互鉴，承前启后，又要从当今世界发展潮流中革故鼎新，开辟未来。双方要以2021年互办中希文化和旅游年为契机，促进人员交往和地方合作，支持在科技创新领域开展合作，包括联合研究。',
          softWrap: true,
      ),

  );

  Widget buttonContainer = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//水平方向均匀排布每个元素
      children: <Widget>[
        buildButtonColumn(Icons.call, '电话'),
        buildButtonColumn(Icons.near_me, '导航'),
        buildButtonColumn(Icons.share, '分'),
      ],
    ),
  );
}
