import 'dart:async';
import 'package:flutter/material.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/screens/details_screens/login_screen.dart';
import 'package:suresports/screens/details_screens/signup_screen.dart';
import 'package:suresports/screens/Alphabet/menuscreen.dart';
import 'package:suresports/screens/numbers/game.dart';
import 'package:suresports/screens/numbers/question.dart';
import 'package:suresports/screens/onboarding/onboarding_screen1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Onboarding1()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: const Center(
            child: Text("YORUBA ALOUD", style: TextStyle(
              color: Colors.purple,
            ),),
          )
      ),
    );
  }
}

