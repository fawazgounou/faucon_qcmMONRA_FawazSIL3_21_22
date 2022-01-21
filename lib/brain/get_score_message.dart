import 'package:faucon_qcm/brain/compute_score.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

getMessage(score) {
  if (score < 0.4) {
    return "vous devez en apprendre plus";
  }
  if (0.4 <= score && score < 0.7) {
    return "vous pouvez faire mieux";
  }
  if (score >= 0.7) {
    return "vous avez bien repondu a toute les questions";
  }
}
