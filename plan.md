# 首页设计

## 总体要求
````
以下是一个基于上述特点和建议的 SaaS 系统首页的文字布局描述：
1.页面头部：包含公司的标志和名称，以及登录/注册入口和语言选择等功能。右侧为导航条，包括首页、产品、解决方案、客户案例、新闻资讯、关于我们和联系我们等板块。

2.主要区域：分为三个部分。
2.1左侧：介绍公司的核心价值和服务特点，例如：高效、智能、人性化等，以及平台的热门服务和推荐服务等。
2.2中间：展示产品信息和客户案例等。左侧为产品分类列表，例如：企业服务、社交媒体、电商平台等，点击进入相应的产品信息页面。右侧为客户案例展示，包括客户名称、行业类型和案例简介等，点击进入详情页面。
2.3右侧：展示新闻资讯和公司动态等。左侧为新闻分类列表，例如：行业新闻、产品更新、公司活动等，点击进入相应的新闻资讯页面。右侧为公司动态展示，包括招聘信息、团队活动等。
3.页面底部：包含网站地图、联系方式和版权信息等。
````


想让你充当Flutter软件开发人员和UI设计师，根据我提供的内容，协助我完成系统，另外我会提供我的项目地址给你查看，明白了，请回复ok.
## ai
### 主体布局
我想让你充当Flutter软件开发人员和UI设计师，根据我提供的内容，使用Flutter画出原型以及提供具体代码，考虑将页面底部抽取为一个组件
````
页面底部：包含网站地图、联系方式和版权信息等
````

### 页面头部
根据我提供的内容，使用Flutter画出原型以及提供这一部分的代码，如果有涉及到其他模块的，也需要写出来
````
页面头部：包含公司的标志和名称，以及登录/注册入口和语言选择等功能。右侧为导航条，包括首页、产品、解决方案、客户案例、新闻资讯、关于我们和联系我们等板块。
````


###
根据我们讨论的内容，对以下进行样式优化:注意：我的Dart版本是2.19.0
````dart
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
            'Login', // 登录按钮
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Register', // 注册按钮
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
      bottom: TabBar(
        controller: _tabController, // Add the TabController
        tabs: [
          Tab(text: '首页'),
          Tab(text: '产品'),
          Tab(text: '解决方案'),
          Tab(text: '客户案例'),
          Tab(text: '新闻资讯'),
          Tab(text: '关于我们'),
          Tab(text: '联系我们'),
        ],
        indicatorColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.blue,
      ),
    );
  }
}

````

## 
### 预留界面1
````dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedLanguage = '中文';

  final List<String> _languages = [
    '中文',
    'English',
    'Deutsch',
  ];

  void _onLanguageChanged(String? newValue) {
    setState(() {
      _selectedLanguage = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('公司名称'),
        actions: [
          DropdownButton<String>(
            value: _selectedLanguage,
            onChanged: _onLanguageChanged,
            items: _languages.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // 点击登录/注册按钮后的操作
            },
          ),
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {
              // 点击语言选择按钮后的操作
            },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // 点击首页按钮后的操作
                  },
                  child: Text('首页'),
                ),
                TextButton(
                  onPressed: () {
                    // 点击产品按钮后的操作
                  },
                  child: Text('产品'),
                ),
                TextButton(
                  onPressed: () {
                    // 点击解决方案按钮后的操作
                  },
                  child: Text('解决方案'),
                ),
                TextButton(
                  onPressed: () {
                    // 点击客户案例按钮后的操作
                  },
                  child: Text('客户案例'),
                ),
                TextButton(
                  onPressed: () {
                    // 点击新闻资讯按钮后的操作
                  },
                  child: Text('新闻资讯'),
                ),
                TextButton(
                  onPressed: () {
                    // 点击关于我们按钮后的操作
                  },
                  child: Text('关于我们'),
                ),
                TextButton(
                  onPressed: () {
                    // 点击联系我们按钮后的操作
                  },
                  child: Text('联系我们'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '欢迎来到Flutter应用开发公司',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'images/home.jpeg',
                    width: 200,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '我们专注于为您提供高质量的Flutter应用开发服务，让您的应用更加美观、易用、高效。',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

````
