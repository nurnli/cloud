import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '网站地图',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('首页'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('产品中心'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('新闻资讯'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('联系我们'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            '联系方式',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '地址：xxx街道xxx号\n电话：xxxxxxxxxx\n邮箱：xxxxx@xxxx.com',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          Text(
            '版权信息 © 2023 xxx有限公司',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
