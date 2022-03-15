import 'package:flutter/material.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/numbers/game.dart';

class TryAgain extends StatefulWidget {
  const TryAgain({Key? key}) : super(key: key);

  @override
  _TryAgainState createState() => _TryAgainState();
}

class _TryAgainState extends State<TryAgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  SizedBox(height: 100,),
                  Text("You were close", style: TextStyle(color: purple, fontSize: 40),),
                  SizedBox(height: 50,),
                  Expanded(child: Container()),
                  Image.asset("asset/images/tryagain.png"),
                  Expanded(child: Container()),
                  SizedBox(height: 40,),
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
                        text: "Try Again",
                      ),
                    ),
                  ),
                  Expanded(child: Container()),

                ]
            )
        )
    );
  }
}
