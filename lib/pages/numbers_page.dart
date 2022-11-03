import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jName: 'Ichi',
      eName: 'One',
      sound: 'number_one_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jName: 'Ni',
      eName: 'Two',
      sound: 'number_two_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jName: 'San',
      eName: 'Three',
      sound: 'number_three_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jName: 'Shi',
      eName: 'Four',
      sound: 'number_four_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jName: 'Go',
      eName: 'Five',
      sound: 'number_five_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jName: 'Roku',
      eName: 'Six',
      sound: 'number_six_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jName: 'Sebun',
      eName: 'Seven',
      sound: 'number_seven_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jName: 'Hachi',
      eName: 'Eight',
      sound: 'number_eight_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jName: 'Kyu',
      eName: 'Nine',
      sound: 'number_nine_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jName: 'Ju',
      eName: 'Ten',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
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
          return Item(
            item: numbers[index],
            itemType: 'numbers',
            color: const Color(0xffEF9235),
          );
        },
        itemCount: numbers.length,
      ),
    );
  }
}
