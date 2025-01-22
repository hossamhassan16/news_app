// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:my_news_app/services/news_services.dart';
import 'package:my_news_app/views/home_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
