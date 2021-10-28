import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final numberOfQuestions;

  TestScreen({this.numberOfQuestions});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            //スコア表示部分
            _scorePart(),
            //問題表示部分
            _questionPart(),
            //電卓ボタン部分
            _calcButtons(),
            //答えボタン部分
            _answerCheckbutton(),
            //戻るボタン
            _buckButton(),
          ],
        ),
      ),
    );
  }

  //TODO スコア表示部分
  _scorePart() {}

  //TODO 問題表示部分
  _questionPart() {}

  //TODO 電卓ボタン部分
  _calcButtons() {}

  //TODO 答え合わせボタン
  _answerCheckbutton() {}

  //TODO 戻るボタン
  _buckButton() {}
}
