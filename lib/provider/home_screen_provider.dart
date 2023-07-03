import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreenProvider extends ChangeNotifier {
  final Random random = Random();
  Color backgroundColor = Colors.white;

  Color getRandomColor() {
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  void changeColor() {
    backgroundColor = getRandomColor();
    notifyListeners();
  }
}
