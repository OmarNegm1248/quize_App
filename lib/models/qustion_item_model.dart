import 'package:flutter/material.dart';
import 'package:quize_app1/models/answer_item_model.dart';

class QustionItemModel {
  final String title;
  final List<AnswerItemModel> avalibaleAnswers;

  QustionItemModel({required this.avalibaleAnswers, required this.title});
}

List<QustionItemModel> qustions = [
  QustionItemModel(
    title: 'What is your favorite sport ?',
    avalibaleAnswers: [
      AnswerItemModel(
        title: 'Football',
        onPressed: () => debugPrint('Football'),
      ),
      AnswerItemModel(
        title: 'Basketball',
        onPressed: () => debugPrint('Basketball'),
      ),
      AnswerItemModel(
        title: 'Vollyball',
        onPressed: () => debugPrint('Vollyball'),
      ),
      AnswerItemModel(title: 'Karate', onPressed: () => debugPrint('Karate')),
    ],
  ),
  QustionItemModel(
    title: 'What is your favorite color ?',
    avalibaleAnswers: [
      AnswerItemModel(title: 'White', onPressed: () => debugPrint('White')),
      AnswerItemModel(title: 'Red', onPressed: () => debugPrint('Red')),
      AnswerItemModel(title: 'Green', onPressed: () => debugPrint('Green')),
      AnswerItemModel(title: 'Blue', onPressed: () => debugPrint('Blue')),
    ],
  ),
  QustionItemModel(
    title: 'What is your favorite animal ?',
    avalibaleAnswers: [
      AnswerItemModel(title: 'Cat', onPressed: () => debugPrint('Cat')),
      AnswerItemModel(title: 'Dog', onPressed: () => debugPrint('Dog')),
      AnswerItemModel(title: 'Monkey', onPressed: () => debugPrint('Monkey')),
      AnswerItemModel(title: 'Tiger', onPressed: () => debugPrint('Tiger')),
    ],
  ),
  QustionItemModel(
    title: 'What is your favorite bird ?',
    avalibaleAnswers: [
      AnswerItemModel(title: 'Flutter', onPressed: () => debugPrint('Flutter')),
      AnswerItemModel(title: 'Owl', onPressed: () => debugPrint('Owl')),
      AnswerItemModel(title: 'Pigeon', onPressed: () => debugPrint('Pigeon')),
      AnswerItemModel(title: 'Raven', onPressed: () => debugPrint('Raven')),
    ],
  ),
];
