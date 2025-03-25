import 'package:flutter/material.dart';
import 'package:quize_app1/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answer;
  final VoidCallback qustionIndexChangeCallback;
  final bool isAnswerChosen;
  final IconData icon;
  
  const AnswerItem({
    super.key,
    required this.isAnswerChosen,
    required this.answer,
    required this.qustionIndexChangeCallback, required this.icon, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: InkWell(
          onTap: () {
            answer.onPressed();
            qustionIndexChangeCallback();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: isAnswerChosen ? Colors.green : Colors.white,
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    icon,
                    size: 30,
                    color: isAnswerChosen ? Colors.white : Colors.black,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    answer.title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: isAnswerChosen ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
