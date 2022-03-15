import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/Alphabet/menuscreen.dart';
import 'package:suresports/screens/numbers/game.dart';
import 'package:suresports/screens/numbers/menuscreen_numbers.dart';
import 'package:suresports/screens/numbers/question.dart';
import 'package:suresports/screens/numbers/shownumbers.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(height: 50,),
              Stack(
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Welcome john,", style: TextStyle(fontSize: 30,),),
                      Icon(Icons.notifications_none, size: 30,)
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.maxFinite,
                height: 200,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: purple,
                  borderRadius: BorderRadius.circular(20)
                ),
                child:  Row(
                    children: [
                      Container(
                          width: 170,
                          child: Text("Start your yoruba learning now", style: TextStyle(color: white, fontSize: 20),)),
                      const SizedBox(height: 80,width: 32,),
                      Image.asset("asset/images/child.png")
                    ],
                  ),
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                   Text("Categories", style: TextStyle(color: Colors.black, fontSize: 24),),
                  Text("See all", style: TextStyle(color: Colors.grey, fontSize: 18),)
                ],
              ),
              const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuScreen())),
                            child: Container(
                              width: 180,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: background1,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("asset/images/alphabet.png"),
                            ),
                          ),
                          Text("Alphabets", textAlign: TextAlign.start,)
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuNumbers())),
                            child: Container(
                              width: 180,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: background2,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.asset("asset/images/numbs.png"),
                            ),
                          ),
                          Text("Numbers", textAlign: TextAlign.start,)
                        ],
                      )
                    ],
                  ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                            color: background3,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset("asset/images/think.png"),
                      ),
                      Text("Lorem Ipsum", textAlign: TextAlign.start,)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                            color: background4,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset("asset/images/read.png"),
                      ),
                      Text("Lorem Ipsum", textAlign: TextAlign.start,)
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
