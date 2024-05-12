import 'package:flutter/material.dart';
import 'package:toku/constants.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "homeScreenId";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(236, 239, 241, 1),
      appBar: AppBar(
        backgroundColor: backgroundColorAppBar,
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          CategoryWidget(
            onTap: () {
              Navigator.pushNamed(context, NumbersScreen.id);
            },
            color: const Color.fromRGBO(207, 216, 220, 1),
            text: 'Numbers',
          ),
          CategoryWidget(
            color: const Color.fromRGBO(176, 190, 197, 1),
            text: 'Family Members',
          ),
          CategoryWidget(
            color: const Color.fromRGBO(144, 164, 174, 1),
            text: 'Colors',
          ),
          CategoryWidget(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersScreen();
                  },
                ),
              );
            },
            color: const Color.fromRGBO(120, 144, 156, 1),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
