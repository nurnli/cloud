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
  List<Widget> _tabs = []; // 保存 Tab 列表

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
    _tabs = _buildTabs(); // 初始化 Tab 列表
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // 优化 Tab 生成逻辑，只在需要更新时才重新生成
  List<Widget> _buildTabs() {
    return [
      Tab(text: '首页'),
      Tab(text: '产品'),
      Tab(text: '解决方案'),
      Tab(text: '客户案例'),
      Tab(text: '新闻资讯'),
      Tab(text: '关于我们'),
      Tab(text: '联系我们'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2.0,
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            'Company Name',
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
            'Login',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Register',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        tabs: _tabs, // 使用保存的 Tab 列表
        indicatorColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.blue,
      ),
    );
  }
}
