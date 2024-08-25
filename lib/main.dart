import 'package:flutter/material.dart';
import 'package:portfolio_web/pages/HomeView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yusra Asim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomeView(),
      );
  }
}
