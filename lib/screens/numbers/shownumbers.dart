import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/numbers/playrecord.dart';
import 'package:suresports/screens/numbers/question.dart';

class ShowNumbers extends StatefulWidget {
  const ShowNumbers({Key? key}) : super(key: key);

  @override
  _ShowNumbersState createState() => _ShowNumbersState();
}

class _ShowNumbersState extends State<ShowNumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0.0,
          leading: Icon(Icons.arrow_back_outlined, color: Colors.black,),
        ),
        body: Container(
          color: white,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic Numbers", style: TextStyle(fontSize: 20),),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(quiz.images[questionNumber]),
                      Text(quiz.correctAnswers[questionNumber], style: TextStyle(color: white, fontSize: 26),),
                      Text(quiz.questions[questionNumber], style: TextStyle(color: Colors.black, fontSize: 15),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70,),
              Container(
                width: double.maxFinite,
                child: AppButton(
                    text: "Listen",
                    size: 60,
                    color:white,
                    background: purple,
                    borderColor: purple
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayRecord())),
                child: Container(
                  width: double.maxFinite,
                  child: AppButton(
                      text: "Record Pronounciation",
                      size: 60,
                      color:white,
                      background: purple,
                      borderColor: purple
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
