import 'package:flutter/material.dart';
import 'package:tugas_flutter_dicoding/data/CardData.dart';

class CardPreview extends StatelessWidget {
  final CardData cardData;

  CardPreview({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Hero(
                    tag: 'banner_${cardData.imageAsset}',
                    child: Image.asset(cardData.imageAsset),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 32.0),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 32.0),
                            child: Text(
                              cardData.title,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Joan',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            '"${cardData.description}"',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontFamily: 'Joan',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            '- ${cardData.cardFor}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontFamily: 'Joan'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 16.0,
                          ),
                          child: Text(
                            'from: ${cardData.cardFrom}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontFamily: 'Joan'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
