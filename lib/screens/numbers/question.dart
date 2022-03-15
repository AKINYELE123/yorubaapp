import 'package:flutter/material.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/constant/questionButtons.dart';
import 'package:suresports/screens/numbers/success.dart';
import 'package:suresports/screens/numbers/tryagain.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = AnimalQuiz();

class AnimalQuiz {
  var images = ["asset/images/numbone.png", "asset/images/adota.png"];
  var questions = ["One", "Fifty"];


  var choices = [
    ["ọwọ", "ife", "Ajala", "Okán", "owe","ÁJA",],
     ["ọwọ", "ife", "Ajala", "Adota","owe","ÁJA"],
  ];

  var correctAnswers = ["Okán", "Adota"];
}

class Quiz1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Quiz1State();
  }
}

class Quiz1State extends State<Quiz1> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex=-1;
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: Center(
              child: Column(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(20.0)),

                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 100,
                        ),
                        Image.asset(quiz.images[questionNumber]),
                      ],
                    ),
                  ),

                  //image
                  const Padding(padding: const EdgeInsets.all(10.0)),

                  const Padding(padding: EdgeInsets.all(10.0)),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(child: Text(quiz.questions[questionNumber], style: TextStyle(color: blue, fontSize: 24),)),
                  ),

                  // Text(
                  //   quiz.questions[questionNumber],
                  //   style: const TextStyle(
                  //     fontSize: 20.0,
                  //   ),
                  // ),

                  const Padding(padding: EdgeInsets.all(10.0)),

                  const Options1(),

                  const Padding(padding: EdgeInsets.all(10.0)),

                  const Option2(),

                  const Padding(padding:  EdgeInsets.all(15.0)),
                ],
              ),
            ),
          ),
        ));
  }


}

class Option2 extends StatelessWidget {
  const Option2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        //button 3
        GestureDetector(
          onTap: () {
            if (quiz.choices[questionNumber][3] ==
                quiz.correctAnswers[questionNumber]){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const Success()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TryAgain()));
            }
          },
          child: QuestionButton(
            // size: 80,
            color: white,
            background: white,
            borderColor: blue,
            text: quiz.choices[questionNumber][3],
            textColor:blue,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (quiz.choices[questionNumber][2] ==
                quiz.correctAnswers[questionNumber]){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Success()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TryAgain()));
            }
          },
          child: QuestionButton(
            // size: 80,
            color: white,
            background: white,
            borderColor: blue,
            text: quiz.choices[questionNumber][1],
            textColor:blue,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (quiz.choices[questionNumber][1] ==
                quiz.correctAnswers[questionNumber]){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Success()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TryAgain()));
            }
          },
          child: QuestionButton(
            // size: 80,
            color: white,
            background: white,
            borderColor: blue,
            text: quiz.choices[questionNumber][1],
            textColor:blue,
          ),
        ),
      ],
    );
  }
}

class Options1 extends StatelessWidget {
  const Options1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            if (quiz.choices[questionNumber][4] ==
                quiz.correctAnswers[questionNumber]){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Success()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TryAgain()));
            }
          },
          child: QuestionButton(
            // size: 80,
            color: white,
            background: white,
            borderColor: blue,
            text: quiz.choices[questionNumber][0],
            textColor:blue,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (quiz.choices[questionNumber][1] ==
                quiz.correctAnswers[questionNumber]){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Success()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TryAgain()));
            }
          },
          child: QuestionButton(
            // size: 80,
            color: white,
            background: white,
            borderColor: blue,
            text: quiz.choices[questionNumber][1],
            textColor:blue,
          ),
        ),
        GestureDetector(
          onTap: () {
            if (quiz.choices[questionNumber][2] ==
                quiz.correctAnswers[questionNumber]){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Success()));
            }else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TryAgain()));
            }
          },
          child: QuestionButton(
            // size: 80,
            color: white,
            background: white,
            borderColor: blue,
            text: quiz.choices[questionNumber][2],
            textColor:blue,
          ),
        ),

        //button 2
        // MaterialButton(
        //   minWidth: 120.0,
        //   color: Colors.blueGrey,
        //   onPressed: () {
        //     if (quiz.choices[questionNumber][1] ==
        //         quiz.correctAnswers[questionNumber]){
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Success()));
        //     }else{
        //       Navigator.push(context, MaterialPageRoute(builder: (context)=>TryAgain()));
        //     }
        //   },
        //   child: Text(
        //     quiz.choices[questionNumber][1],
        //     style: const TextStyle(
        //         fontSize: 20.0, color: Colors.white),
        //   ),
        // ),
      ],
    );
  }
}


