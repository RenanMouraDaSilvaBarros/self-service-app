import 'package:flutter/material.dart';

import 'modules/food_plate_screen/food_plate_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FoodPlateScreen(),
    );
  }
}

//https://www.pngwing.com/pt/free-png-btoem/download