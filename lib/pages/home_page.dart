import 'package:flutter/material.dart';
import 'package:language_learn/pages/colors_page.dart';
import 'package:language_learn/pages/family_members_page.dart';
import 'package:language_learn/pages/numbers_page.dart';
import 'package:language_learn/pages/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          'Learn Japanese Language',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color:const Color(0xffEF9235),
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
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMembersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const  Color(0xff79359F),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff50adcc7),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
