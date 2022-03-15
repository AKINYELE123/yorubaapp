import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/numbers/listentopronnumb.dart';
import 'package:suresports/screens/numbers/question.dart';

class PlayRecord extends StatefulWidget {
  const PlayRecord({Key? key}) : super(key: key);

  @override
  _PlayRecordState createState() => _PlayRecordState();
}

class _PlayRecordState extends State<PlayRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          toolbarHeight: 20,
          elevation: 0.0,
          leading: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
        ),
        body: Container(
          color: white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Repeat Pronounciation",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: CircleAvatar(
                radius: 100,
                backgroundColor: blue,
                child: CircleAvatar(
                  radius: 90,
                  child: Icon(
                    Icons.mic,
                    color: blue,
                    size: 50,
                  ),
                ),
              )),
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Column(
                    children: [
                      Text(
                        quiz.correctAnswers[questionNumber],
                style: TextStyle(
                        fontSize: 40, color: blue, fontWeight: FontWeight.bold),
              ),
                      Text(
                        quiz.questions[questionNumber],
                        style: TextStyle(
                            fontSize: 15, ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> ListentoRecord())),
                child: Container(
                  width: double.maxFinite,
                  child: AppButton(
                      text: "Listen to Pronounciation ",
                      size: 60,
                      color: white,
                      background: purple,
                      borderColor: purple),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: double.maxFinite,
                  child: AppButton(
                      text: "Back",
                      size: 60,
                      color: white,
                      background: purple,
                      borderColor: purple),
                ),
              )
            ],
          ),
        ));
  }
}
