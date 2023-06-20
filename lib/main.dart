
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home_screen_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreenLayout(),
    );
  }
}
