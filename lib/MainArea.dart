import 'package:flutter/material.dart';

class MainArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LeftArea(),
        MiddleArea(),
        RightArea(),
      ],
    );
  }
}

class LeftArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '核心价值',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '高效、智能、人性化',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '热门服务',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '服务A、服务B、服务C',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '推荐服务',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '服务D、服务E、服务F',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class MiddleArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              '产品分类',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('产品 $index'),
                  onTap: () {
                    // TODO: 点击进入产品信息页面
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RightArea extends StatelessWidget {
  const RightArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '新闻资讯',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 8),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              NewsCard(
                image: AssetImage('assets/news1.jpg'),
                title: '行业新闻',
                subtitle: '最新产品上线',
              ),
              NewsCard(
                image: AssetImage('assets/news2.jpg'),
                title: '产品更新',
                subtitle: '升级公告',
              ),
              NewsCard(
                image: AssetImage('assets/news3.jpg'),
                title: '公司活动',
                subtitle: '圣诞派对即将开始',
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Text(
          '公司动态',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: 8),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ActivityCard(
                imageUrl: AssetImage('assets/images/logo.png').assetName,
                title: '加入我们',
                description: '多个职位等你来',
              ),
              ActivityCard(
                imageUrl: AssetImage('assets/images/logo.png').assetName,
                title: '团队活动',
                description: '远足一日游',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NewsCard extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subtitle;

  const NewsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      margin: EdgeInsets.only(right: 16),
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ActivityCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
