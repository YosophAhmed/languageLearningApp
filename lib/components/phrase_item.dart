import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/phrase_model.dart';

class PhraseItem extends StatelessWidget {
  final Phrase item;
  final Color color;
  final String itemType;

  const PhraseItem(
      {Key? key,
      required this.item,
      required this.itemType,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  item.eName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(item.sound);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
