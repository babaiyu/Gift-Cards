import 'package:flutter/material.dart';
import 'package:tugas_flutter_dicoding/SplashScreen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Cards',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
