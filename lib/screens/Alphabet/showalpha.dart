import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/Alphabet/play.dart';




var alphabetNumber = 0;
var alphabets = Alphabets();

class Alphabets {
  var images = ["asset/images/naa.png", "asset/images/bee.png",];
  var Letters = ["Á", "B"];
}

class ShowAlpha extends StatefulWidget {
  const ShowAlpha({Key? key}) : super(key: key);

  @override
  _ShowAlphaState createState() => _ShowAlphaState();
}

class _ShowAlphaState extends State<ShowAlpha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: ()=> Navigator.pop(context),
            child: Icon(Icons.arrow_back_outlined, color: Colors.black,)),
      ),
      body: Container(
        color: white,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Alphabets", style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Image.asset(alphabets.images[alphabetNumber]),
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
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Play())),
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
