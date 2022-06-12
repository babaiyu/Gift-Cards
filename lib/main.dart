import 'package:flutter/material.dart';
import 'package:tugas_flutter_dicoding/MainScreen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Cards',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
