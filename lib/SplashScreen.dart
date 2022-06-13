import 'package:flutter/material.dart';
import 'package:tugas_flutter_dicoding/MainScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Personalize Gift Card',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'The easiest way to create gift card. Let start create your card!',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen();
                    },
                  ),
                );
              },
              child: const Text('CREATE CARD'),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black87,
    );
  }
}
