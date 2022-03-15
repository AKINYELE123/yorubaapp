import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/details_screens/login_screen.dart';
import 'package:suresports/screens/details_screens/signup_screen.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: purple,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: EdgeInsets.only(top: 30, left: 25, right: 25),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 30,),
              Container(
                child: Image.asset("asset/images/roccket.png"),),
              SizedBox(height: 25,),
              Text("Start your kids learning Yoruba Adventure", textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 30),),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sign_up_Screen())),
                child: Container(
                  width: double.maxFinite,
                  child: AppButton(
                    text: "Sign Up",
                    size: 60,
                    color: Colors.purple,
                    background: white,
                    borderColor: white,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                child: Container(
                  width: double.maxFinite,
                  child: AppButton(
                    text: "Login",
                    size: 60,
                    color: white,
                    background: purple,
                    borderColor: white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
