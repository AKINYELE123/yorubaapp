import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/numbers/game.dart';
import 'package:suresports/screens/numbers/question.dart';
import 'package:suresports/screens/numbers/shownumbers.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SizedBox(height: 50,),
    Image.asset("asset/images/Congratulation.png"),
    SizedBox(height: 50,),
          Image.asset("asset/images/success.png"),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              updateQuestion();
            },
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.maxFinite,
              child: AppButton(
                size: 50,
                color: white,
                background: purple,
                borderColor: purple,
                text: "Next Lesson",
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.maxFinite,
              child: AppButton(
                size: 50,
                color: white,
                background: purple,
                borderColor: purple,
                text: "Previous Lesson",
              ),
            ),
          )
    ]
        )
    )
    );
  }
  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ShowNumbers(

                )));
      } else {
        questionNumber++;
      }
    });
  }
}
