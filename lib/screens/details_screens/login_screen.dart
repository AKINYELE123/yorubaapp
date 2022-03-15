import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suresports/api.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:suresports/dashboard.dart';
import 'package:suresports/screens/details_screens/signup_screen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  _showMsg(msg) { //
    final snackBar = SnackBar(
      backgroundColor: Color(0xFF363f93),
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  _login() async {
    var data = {
      'phone_number' : numberController.text,
    };

    var res = await CallApi().postData(data, 'login');
    var body = json.decode(res.body);
    print(body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', body['token']);
      localStorage.setString('user', json.encode(body['user']));
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => DashBoard()));
    }else{
      _showMsg(body['message']);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                color: purple,
                width: double.maxFinite,
                height: 350,
                child: Image.asset("asset/images/cute.png"),
              ),
            ),
            Positioned(
                top: 280,
                child: Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        children: [
                          Text("Login", style: TextStyle(fontSize: 20),),
                          SizedBox(height: 50,),
                          buildTextPasswordFormField(),
                          SizedBox(height: 30,),
                          GestureDetector(
                            onTap: ()=> _login(),
                            child: Container(
                              width: double.maxFinite,
                              child: AppButton(
                                text: "Login",
                                size: 60,
                                color: white,
                                background: purple,
                                borderColor: purple,
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?"),
                              GestureDetector(
                                  onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Sign_up_Screen())),
                                  child: Text(" Sign Up", style: TextStyle(color: purple)))
                            ],
                          )
                        ],
                      ),
                    )
                )
            )
          ],
        ),
      ),
    );
  }



  TextFormField buildTextPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      controller: numberController,
      obscureText: false,
      decoration: InputDecoration(
        hintText: "Enter your Number",
        labelText: "Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: grey),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: grey),
          gapPadding: 10,
        ),
      ),
    );
  }
}
