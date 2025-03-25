import 'package:flutter/material.dart';
import 'package:quize_app/models/qustion_item_model.dart';
import 'package:quize_app/widgets/answer_item.dart';
import 'package:quize_app/widgets/question_item.dart';
import 'package:quize_app/widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int qustionIndex = 0, totalScore = 0;
  int answerChosen = -1;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            !showTotalScore
                ? Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      QuestionItem(qustionItem: qustions[qustionIndex]),
                      const SizedBox(height: 30),
                      Column(
                        children: List.generate(
                          qustions[qustionIndex].avalibaleAnswers.length,
                          (index) => AnswerItem(
                            icon: Icons.quiz_outlined,
                            isAnswerChosen: answerChosen == index,
                            answer:
                                qustions[qustionIndex].avalibaleAnswers[index],
                            qustionIndexChangeCallback: () {
                              setState(() {
                                answerChosen = index;
                              });
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              totalScore += 10;
                              answerChosen = -1;

                              if (totalScore >= 40) {
                                showTotalScore = true;
                              } else if (qustionIndex + 1 < qustions.length) {
                                qustionIndex += 1;
                              }
                            });
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                : TotalScorePart(
                  totalScore: totalScore,
                  resetQuizOnPressed: () {
                    setState(() {
                      totalScore = 0;
                      qustionIndex = 0;
                      showTotalScore = false; // إعادة الاختبار من البداية
                    });
                  },
                ),
      ),
    );
  }
}
