import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/onboarding/onboarding_screen3.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  _Onboarding2State createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: purple,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 40,),
            Container(
              child: Image.asset("asset/images/children.png"),),
            const SizedBox(height: 35,),
            const Text("Fun Games To Help You Speak Yoruba with Mom", textAlign: TextAlign.center,style: const TextStyle(color: Colors.white, fontSize: 30),),
            const SizedBox(height: 100,),
            GestureDetector(
              onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Onboarding3())),
              child: SizedBox(
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
