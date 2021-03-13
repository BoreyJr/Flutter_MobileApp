import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfont/page/MyLocalData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Khmer OS fasthand",
      ),
      home: ReaderPage(),
      // initialRoute: ('/'),
      // routes: {
      //   ('/'): (ctx) => Home(),
      //   SubjectDetail.routeName: (ctx) => SubjectDetail(),
      // },
    );
  }
}
