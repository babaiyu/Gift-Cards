import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gift Card'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Personalize your gift cards',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text(
                'Choose your image, edit the text, and get the image',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: numList.map((e) {
                  return Container(
                    width: width * 0.44,
                    height: width * 0.44,
                    color: Colors.green,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
