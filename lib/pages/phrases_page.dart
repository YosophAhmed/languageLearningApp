import 'package:flutter/material.dart';

import '../components/phrase_item.dart';
import '../models/phrase_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<Phrase> phrases =  const [
    Phrase(
        jName: 'Namae wa nani?',
        eName: 'What is your name?',
        sound: 'what_is_your_name.wav',
    ),
    Phrase(
        jName: 'Go kibun wa ikagadesu ka?',
        eName: 'How are you feeling?',
        sound: 'how_are_you_feeling.wav',
    ),
    Phrase(
      jName: 'Puroguramingu ga daisuki',
      eName: 'I love programming',
      sound: 'i_love_programming.wav',
    ),
    Phrase(
      jName: 'Puroguramingu wa kantan',
      eName: 'Programming is easy',
      sound: 'programming_is_easy.wav',
    ),
    Phrase(
      jName: 'Doko ni iku no?',
      eName: 'Where are you going?',
      sound: 'where_are_you_going.wav',
    ),
    Phrase(
      jName: 'Kimasu ka?',
      eName: 'Are you coming?',
      sound: 'are_you_coming.wav',
    ),
    Phrase(
      jName: 'Hai, kimasu',
      eName: 'Yes i am coming',
      sound: 'yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhraseItem(
            item: phrases[index],
            itemType: 'phrases',
            color: const Color(0xff50adcc7),
          );
        },
        itemCount: phrases.length,
      ),
    );
  }
}
