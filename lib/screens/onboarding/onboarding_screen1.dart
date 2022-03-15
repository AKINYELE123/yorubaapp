import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/onboarding/onboarding_screen2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  _Onboarding1State createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: purple,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 40,),
            Container(
              child: Image.asset("asset/images/teach.png"),),
            SizedBox(height: 35,),
            Text("Learn Alphabet & Numbers with Yoruba", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 30),),
            SizedBox(height: 100,),
            GestureDetector(
              onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Onboarding2())),
              child: Container(
                width: double.maxFinite,
                child: AppButton(
                  text: "Next",
                    size: 60,
                    color: Colors.purple,
                    background: white,
                    borderColor: white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
