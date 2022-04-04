import 'package:flutter/material.dart';

class FeedModel {
  String title;
  String url;
  Color primaryColor; //This is a temp solution
  int newItemCount;
  int totalSteps;
  int completedSteps;

  FeedModel({
    required this.url,
    required this.title,
    required this.newItemCount,
    required this.totalSteps,
    required this.completedSteps,
    required this.primaryColor,
  });
}
