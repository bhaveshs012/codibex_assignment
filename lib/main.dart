import 'package:codibex_assignment/views/homePage/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Satoshi',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
