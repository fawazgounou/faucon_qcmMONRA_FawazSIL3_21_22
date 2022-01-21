import 'package:faucon_qcm/brain/compute_score.dart';
import 'package:flutter/material.dart';

getColor(double score) {
  if (score < 0.4) {
    return Colors.red;
  }
  if (0.4 <= score && score < 0.7) {
    return Colors.yellow;
  }
  if (score >= 0.7) {
    return Colors.green;
  }
}
