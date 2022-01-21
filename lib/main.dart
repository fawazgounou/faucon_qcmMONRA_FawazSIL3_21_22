import 'package:faucon_qcm/screens/quest_screen.dart';
import 'package:flutter/material.dart';
import 'package:faucon_qcm/screens/score_screen.dart';

import 'package:faucon_qcm/color.dart';
/* import 'package:faucon_qcm/screens/quest_screen.dart';
import 'package:faucon_qcm/screens/score_screen.dart'; */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Quizz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: "Muli",
      ),
      home:  QuestScreen(),
    );
  }
}


