import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number_model.dart';

class NumbersContainerWidget extends StatelessWidget {
  NumbersContainerWidget({
    super.key,
    required this.number,
  });
  NumberModel number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(207, 216, 220, 1),
      child: Row(
        children: [
          Container(
            color: Color.fromRGBO(236, 239, 241, 1),
            child: Image.asset(
              number.image,
              width: 80,
              height: 80,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(
                    number.sound)); // equivalent to setSource(UrlSource(url));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
