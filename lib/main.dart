import 'package:flutter/material.dart';
import 'package:toku/screens/home_screen.dart';
import 'package:toku/screens/numbers_screen.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        NumbersScreen.id: (context) => NumbersScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
