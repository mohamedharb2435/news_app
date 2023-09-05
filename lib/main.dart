
import 'package:flutter/material.dart';
import 'package:news/views/home_view.dart';
import 'package:news/widgets/SplashScreen.dart';


void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<NewsApp> createState() => _NewsAppState();
}

class _NewsAppState extends State<NewsApp> {

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,

    //  home:SplashScreen(),
      home: SplashScreen(),
    );
  }
}
