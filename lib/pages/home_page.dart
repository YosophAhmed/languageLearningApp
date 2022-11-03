import 'package:flutter/material.dart';
import 'package:language_learn/pages/numbers_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: Color(0xff558B37),
            onTap: () {},
          ),
          Category(
            text: 'Colors',
            color: Color(0xff79359F),
            onTap: () {},
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff50adcc7),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
