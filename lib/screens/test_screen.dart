import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  final int numberOfQuestions;

  TestScreen({required this.numberOfQuestions});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int numberOfRemaining = 0;
  int numberOfCorrect = 0;
  int correctRate = 0;

  //@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                //スコア表示部分
                _scorePart(),
                //問題表示部分
                //_questionPart(),
                //電卓ボタン部分
                //_calcButtons(),
                //答え合わせボタン
                //_answerCheckButton(),
                //戻るボタン
                //_backButton()
              ],
            ),
          ],
        ),
      ),
    );
  }

  //スコア表示部分
  Widget _scorePart() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
      child: Table(
        children: [
          TableRow(children: [
            Center(
                child: Text(
              "のこり問題数",
              style: TextStyle(fontSize: 10.0),
            )),
            Center(
                child: Text(
              "正解数",
              style: TextStyle(fontSize: 10.0),
            )),
            Center(
                child: Text(
              "正答率",
              style: TextStyle(fontSize: 10.0),
            )),
          ]),
          TableRow(children: [
            Center(
                child: Text(
              numberOfRemaining.toString(),
              style: TextStyle(fontSize: 18.0),
            )),
            Center(
                child: Text(
              numberOfCorrect.toString(),
              style: TextStyle(fontSize: 18.0),
            )),
            Center(
                child: Text(
              correctRate.toString(),
              style: TextStyle(fontSize: 18.0),
            )),
          ]),
        ],
      ),
    );
  }

  //問題表示部分
  //Widget _questionPart() {}

  //電卓ボタン部分
  //Widget _calcButtons() {}

  //Widget _calcButton(String numString) {}

  //答え合わせボタン
  //Widget _answerCheckButton() {}

  //戻るボタン
  //Widget _backButton() {}

}
