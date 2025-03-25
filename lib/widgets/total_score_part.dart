import 'package:flutter/material.dart';

class TotalScorePart extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuizOnPressed;
  const TotalScorePart({
    super.key,
    required this.totalScore,
    required this.resetQuizOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your total score is : : ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              '$totalScore',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                fixedSize: Size(200, 50),
              ),
              onPressed: resetQuizOnPressed,
              child: Text(
                'Reset this quize !',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
