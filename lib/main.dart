import 'package:flutter/material.dart';
import 'package:cloud/SaasHomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaaS系统首页',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SaasHomePage(),
    );
  }
}
