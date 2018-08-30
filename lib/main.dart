import 'package:flutter/material.dart';
import 'package:flutter_community_challenges/mainViews.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Community Challenges',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainViews(title: 'Flutter Community Challenges'),
      debugShowCheckedModeBanner: false,
    );
  }
}