import 'dart:math';
import 'package:faucon_qcm/screens/quest_screen.dart';
import 'package:flutter/material.dart';

double score = 0;
getcompter(int indexquestion, int correctanswers) {
  if (indexquestion == 0) {
    if (correctanswers == 2) {
      score = (1 / 6);
    }
  }
  if (indexquestion == 1) {
    if (correctanswers == 0) {
      score += (1 / 6);
    }
  }
  if (indexquestion == 2) {
    if (correctanswers == 0) {
      score += (1 / 6);
    }
  }
  if (indexquestion == 3) {
    if (correctanswers == 3) {
      score += (1 / 6);
    }
  }
  if (indexquestion == 4) {
    if (correctanswers == 2) {
      score += (1 / 6);
    }
  }
  if (indexquestion == 5) {
    if (correctanswers == 0) {
      score += (1 / 6);
    }
  }
}
