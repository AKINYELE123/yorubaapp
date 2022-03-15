import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/constant/selectButtons.dart';
import 'package:suresports/screens/Alphabet/showalpha.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        leading: GestureDetector(onTap: ()=> Navigator.pop(context),child: Icon(Icons.arrow_back_outlined)),
        elevation: 0,
        backgroundColor: purple,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                color: purple,
                width: double.maxFinite,
                height: 250,
                child: Image.asset("asset/images/abc.png"),
              ),
            ),
            Positioned(
                top: 220,
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        //color: Colors.yellow,
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        )),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lorem Ispum", style: TextStyle(color: Colors.black, fontSize: 20),),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowAlpha())),
                            child: SelectButton(
                              borderColor: purple,
                              subText: "Identification",
                              headerText: "Basic Alphabet",
                              icon: Icons.check,
                              iconBorderColor: white,
                              iconColor: purple,
                              borderBackground: purple,
                              textColor: white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SelectButton(
                            borderColor: purple,
                            subText: "Guides",
                            headerText: "Vowel Sounds",
                            icon: Icons.lock,
                            iconBorderColor: white,
                            iconColor: Colors.black,
                            borderBackground: white,
                            textColor: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SelectButton(
                            borderColor: purple,
                            subText: "Guides",
                            headerText: "Consonant Sounds",
                            icon: Icons.lock,
                            iconBorderColor: white,
                            iconColor: Colors.black,
                            borderBackground: white,
                            textColor: Colors.black,
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}

