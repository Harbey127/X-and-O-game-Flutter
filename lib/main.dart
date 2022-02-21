import 'package:flutter/material.dart';
import 'package:x_or_o/pages/game.dart';
import 'package:x_or_o/pages/player_details.dart';

import 'pages/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainScreen(),
    );
  }
}
