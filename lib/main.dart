import 'package:flutter/material.dart';
import 'package:myfont/MainPage.dart';
import 'package:myfont/MyListView.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListView(),
    );
  }
}
