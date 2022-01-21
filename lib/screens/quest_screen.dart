import 'dart:math';
import 'package:faucon_qcm/brain/compute_score.dart';
import 'package:faucon_qcm/brain/get_score_color.dart';
import 'package:faucon_qcm/brain/get_score_message.dart';
import 'package:faucon_qcm/data/quizzes_list.dart';
import 'package:faucon_qcm/models/question.dart';
import 'package:faucon_qcm/screens/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:faucon_qcm/color.dart';

class QuestScreen extends StatefulWidget {
  QuestScreen({Key? key}) : super(key: key);

  @override
  _QuestScreenState createState() => _QuestScreenState();
}

class _QuestScreenState extends State<QuestScreen> {
  late int indexquestion;
  Color color1 = unselectedQuestionColor;
  Color color2 = unselectedQuestionColor;
  Color color3 = unselectedQuestionColor;
  Color color4 = unselectedQuestionColor;

  @override
  void initState() {
    indexquestion = 0;
    color1 = unselectedQuestionColor;
    color2 = unselectedQuestionColor;
    color3 = unselectedQuestionColor;
    color4 = unselectedQuestionColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Quiz'),
        backgroundColor: backgroundColor,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                allquizzes[indexquestion].question,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 25),
              const Divider(
                height: 20,
                thickness: 3,
                color: Colors.white,
              ),
              const SizedBox(height: 80),
              Column(children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = selectedQuestionColor;
                      color2 = unselectedQuestionColor;
                      color3 = unselectedQuestionColor;
                      color4 = unselectedQuestionColor;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.all(5),
                            width: 50.0,
                            height: 100,
                            decoration: BoxDecoration(
                              color: selectedQuestionColor,
                              shape: BoxShape.circle,
                            ),
                            child: Column(children: [
                              const Padding(padding: EdgeInsets.all(5)),
                              Text(
                                "A",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ])),
                        Flexible(
                          child: Container(
                            child: Text(
                                allquizzes[indexquestion].possibleAnswers[0]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = unselectedQuestionColor;
                      color2 = selectedQuestionColor;
                      color3 = unselectedQuestionColor;
                      color4 = unselectedQuestionColor;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          width: 50.0,
                          height: 100,
                          decoration: BoxDecoration(
                            color: selectedQuestionColor,
                            shape: BoxShape.circle,
                          ),
                          child: Column(children: [
                            const Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "B",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                                allquizzes[indexquestion].possibleAnswers[1]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = unselectedQuestionColor;
                      color2 = unselectedQuestionColor;
                      color3 = selectedQuestionColor;
                      color4 = unselectedQuestionColor;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: color3,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          width: 50.0,
                          height: 100,
                          decoration: BoxDecoration(
                            color: selectedQuestionColor,
                            shape: BoxShape.circle,
                          ),
                          child: Column(children: [
                            const Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "C",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                                allquizzes[indexquestion].possibleAnswers[2]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = unselectedQuestionColor;
                      color2 = unselectedQuestionColor;
                      color3 = unselectedQuestionColor;
                      color4 = selectedQuestionColor;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    height: 60,
                    decoration: BoxDecoration(
                      color: color4,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          width: 50.0,
                          height: 100,
                          decoration: BoxDecoration(
                            color: selectedQuestionColor,
                            shape: BoxShape.circle,
                          ),
                          child: Column(children: [
                            const Padding(padding: EdgeInsets.all(5)),
                            Text(
                              "D",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                                allquizzes[indexquestion].possibleAnswers[3]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          setState(() {
            if (indexquestion >= 5) {
              if (color1 == selectedQuestionColor) {
                getcompter(indexquestion, 0);
              }
              color1 = unselectedQuestionColor;
              color2 = unselectedQuestionColor;
              color3 = unselectedQuestionColor;
              color4 = unselectedQuestionColor;

              Color ResulCouleur = getColor(score);
              String Apprecition = getMessage(score);
              double Score = score;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScoreScreen(
                    couleurresultat: ResulCouleur,
                    message: Apprecition,
                    pointgagner: Score,
                  ),
                ),
              );
              indexquestion = 0;
            } else {
              if (color1 == selectedQuestionColor) {
                getcompter(indexquestion, 0);
              }
              if (color2 == selectedQuestionColor) {
                getcompter(indexquestion, 1);
              }
              if (color3 == selectedQuestionColor) {
                getcompter(indexquestion, 2);
              }
              if (color4 == selectedQuestionColor) {
                getcompter(indexquestion, 3);
              }

              indexquestion = indexquestion + 1;
              color1 = unselectedQuestionColor;
              color2 = unselectedQuestionColor;
              color3 = unselectedQuestionColor;
              color4 = unselectedQuestionColor;
            }
          });
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 30),
          height: 60.0,
          width: 100,
          decoration: BoxDecoration(
              color: selectedQuestionColor,
              borderRadius: BorderRadius.circular(30)),
          child: const Text(
            "SUIVANT",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
