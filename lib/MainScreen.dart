import 'package:flutter/material.dart';
import 'package:tugas_flutter_dicoding/CardPreview.dart';
import 'package:tugas_flutter_dicoding/data/CardData.dart';
import 'package:tugas_flutter_dicoding/data/ImagesData.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Padding(
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
              FormInput(),
            ],
          ),
        ),
      ),
    );
  }
}

class FormInput extends StatefulWidget {
  @override
  _FormInput createState() => _FormInput();
}

class _FormInput extends State<FormInput> {
  String title = '';
  String description = '';
  String cardFrom = '';
  String cardFor = '';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: <Widget>[
              const Text(
                'Edit your text here',
                textAlign: TextAlign.center,
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write title card here',
                  labelText: 'Title',
                ),
                textCapitalization: TextCapitalization.words,
                onChanged: (String value) {
                  setState(() {
                    title = value;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write description card here',
                  labelText: 'Description',
                ),
                textCapitalization: TextCapitalization.sentences,
                onChanged: (String value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write card from...',
                  labelText: 'Card From',
                ),
                textCapitalization: TextCapitalization.words,
                onChanged: (String value) {
                  setState(() {
                    cardFrom = value;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write card to...',
                  labelText: 'Card For',
                ),
                textCapitalization: TextCapitalization.words,
                onChanged: (String value) {
                  setState(() {
                    cardFor = value;
                  });
                },
              ),
            ],
          ),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: imagesData.map((e) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    final CardData cardData = CardData(
                        title: title,
                        description: description,
                        cardFrom: cardFrom,
                        cardFor: cardFor,
                        imageAsset: e.imageAsset);
                    return CardPreview(cardData: cardData);
                  }));
                },
                child: SizedBox(
                  width: width * 0.44,
                  height: width * 0.44,
                  child: Image.asset(e.imageAsset),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
