import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> colors = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jName: 'Burakku',
      eName: 'Black',
      sound: 'black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jName: 'Chairo',
      eName: 'Brown',
      sound: 'brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jName: 'Hokori ppoi kiiro',
      eName: 'Dusty Yellow',
      sound: 'dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jName: 'Gurē',
      eName: 'Grey',
      sound: 'gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jName: 'Midori',
      eName: 'Green',
      sound: 'green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jName: 'Aka',
      eName: 'Red',
      sound: 'red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jName: 'Shiroi',
      eName: 'White',
      sound: 'white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jName: 'Kiiro',
      eName: 'Yellow',
      sound: 'yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
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
            item: colors[index],
            itemType: 'colors',
            color: const Color(0xff79359F),
          );
        },
        itemCount: colors.length,
      ),
    );
  }
}
