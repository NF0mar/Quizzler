import 'package:flutter/material.dart';
import 'QuizBrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Quizz(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Quizz extends StatefulWidget {
  const Quizz({super.key});

  @override
  State<Quizz> createState() => _QuizzState();
}

class _QuizzState extends State<Quizz> {
  List<Icon> scoreKeeper = [];
  // List<String> questions = [
  //   'Siyaad Bare wuxuu dhintay 1991',
  //   'Xasan sheikh waa madaxweynaha kaliya ee 2 mar xilka qabtay',
  //   'Aadan cade waa madaxweynihii ugu horeyay ee Soomaaliya'
  // ];
  // List<bool> answers = [false, true, true];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: TextButton(
                onPressed: () {
                  bool correctAns = quizBrain.getQuestionAnswer();
                  if (correctAns == true) {
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    );
                    print('got the right answer');
                  } else {
                    const Icon(
                      Icons.close,
                      color: Colors.red,
                    );
                    print('got the wrong answer');
                  }
                  setState(
                    () {
                      quizBrain.nextQuestion();
                    },
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: const Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  bool correctAns = quizBrain.getQuestionAnswer();
                  if (correctAns == false) {
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    );
                    print('got the right answer');
                  } else {
                    const Icon(
                      Icons.close,
                      color: Colors.red,
                    );
                    print('got the wrong answer');
                  }
                  setState(
                    () {
                      quizBrain.nextQuestion();
                    },
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: const Text(
                  'False',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Row(children: scoreKeeper),
        ],
      ),
    );
  }
}
