import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      JName: 'Ichi',
      EName: 'One',
    ),
    Number(
        image: 'assets/images/numbers/number_two.png',
        JName: 'Ni',
        EName: 'Two',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      JName: 'San',
      EName: 'Three',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      JName: 'Shi',
      EName: 'Four',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      JName: 'Go',
      EName: 'Five',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      JName: 'Roku',
      EName: 'Six',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      JName: 'Sebun',
      EName: 'Seven',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      JName: 'Hachi',
      EName: 'Eight',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      JName: 'Kyu',
      EName: 'Nine',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      JName: 'Ju',
      EName: 'Ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Numbers',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView(
        children: [
          Item(number: numbers[0]),
          Item(number: numbers[1]),
          Item(number: numbers[2]),
          Item(number: numbers[3]),
          Item(number: numbers[4]),
          Item(number: numbers[5]),
          Item(number: numbers[6]),
          Item(number: numbers[7]),
          Item(number: numbers[8]),
          Item(number: numbers[9]),
        ],
      ),
    );
  }
}


