import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzier_flutter/quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(const Quizzier());

class Quizzier extends StatelessWidget {
  const Quizzier({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> liveResult = [];

  int result = 0;

  QuizBrain qb = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qb.getQuestion(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                checkResult(true);
              },
              child: const Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                checkResult(false);
              },
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: liveResult,
        ),
      ],
    );
  }

  void checkResult(bool userAswer) {
    bool correctAnswer = qb.getAnswer();
    setState(() {
      if (qb.isFinished()) {
        Alert(
          context: context,
          type: AlertType.success,
          title: "Done",
          desc: "You Score is $result.",
        ).show();
        qb.Reset();
        liveResult.clear();
        result = 0;
      }
      else {
        if (correctAnswer == userAswer) {
          result++;
          liveResult.add(RightIcon());
        } else {
          liveResult.add(WrongIcon());
        }
        qb.nextQues();
      }
    });
  }

  Icon RightIcon() {
    return const Icon(
      Icons.check,
      color: Colors.green,
    );
  }

  Icon WrongIcon() {
    return const Icon(
      Icons.close,
      color: Colors.red,
    );
  }
}
