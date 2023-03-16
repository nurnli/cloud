import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 48.0);
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2.0,
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png', // 公司标志
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            'Company Name', // 公司名称
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [
        PopupMenuButton<String>(
          icon: Icon(Icons.language),
          onSelected: (String value) {},
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'English',
                child: Text('English'),
              ),
              PopupMenuItem<String>(
                value: '中文',
                child: Text('中文'),
              ),
            ];
          },
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            '登录', // 登录按钮
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            '注册', // 注册按钮
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ],
      bottom: TabBar(
        controller: _tabController, // Add the TabController
        tabs: [
          Tab(
            child: Text(
              '首页',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Tab(
            child: Text(
              '产品',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Tab(
            child: Text(
              '解决方案',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Tab(
            child: Text(
              '客户案例',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Tab(
            child: Text(
              '新闻资讯',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Tab(
            child: Text(
              '关于我们',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Tab(
            child: Text(
              '联系我们',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
        indicatorColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.blue,
        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
        isScrollable: true,
      ),
    );
  }
}
