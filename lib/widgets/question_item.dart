import 'package:flutter/material.dart';
import 'package:quize_app1/models/qustion_item_model.dart';

class QuestionItem extends StatelessWidget {
  final QustionItemModel qustionItem;
  const QuestionItem({super.key, required this.qustionItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          qustionItem.title,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 12),
        Text(
          'Answer and get points !',
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
