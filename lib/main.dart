import 'package:flutter/material.dart';
import 'package:foodapp/screens/home/home_screen.dart';
import 'package:foodapp/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI Kit',
      theme: buildThemeData(),

      /// On first screen must call [SizeConfig().init(context)]
      home: HomeScreen(),
    );
  }
}
