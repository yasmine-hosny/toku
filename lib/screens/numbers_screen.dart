import 'package:flutter/material.dart';
import 'package:toku/constants.dart';
import 'package:toku/models/number_model.dart';
import 'package:toku/widgets/numbers_container_widget.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  static String id = "numbersScreenId";
  final List<NumberModel> numbers = const [
    NumberModel(
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'san',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'san',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'san',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
    NumberModel(
        jpName: 'san',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png',
        sound: 'sounds/toku_assets_sounds_numbers_number_two_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColorAppBar,
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: ((context, index) =>
            NumbersContainerWidget(number: numbers[index])),
      ),
    );
  }

  //  method to use in listView
  //  List<Widget> setNumber(List<NumberModel> numbers) {
  //   List<Widget> list = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     list.add(NumbersContainerWidget(number: number[i]));
  //   }
  //   return list;
  // }
}
