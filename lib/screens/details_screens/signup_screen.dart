import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:suresports/api.dart';
import 'package:suresports/constant/button.dart';
import 'package:suresports/constant/colors.dart';
import 'package:http/http.dart' as http;
import 'package:suresports/dashboard.dart';
import 'package:suresports/screens/details_screens/login_screen.dart';
import 'package:suresports/services/auth_services.dart';
import 'package:suresports/services/globals.dart';

class Sign_up_Screen extends StatefulWidget {
  const Sign_up_Screen({Key? key}) : super(key: key);

  @override
  _Sign_up_ScreenState createState() => _Sign_up_ScreenState();
}

class _Sign_up_ScreenState extends State<Sign_up_Screen> {

  // String _first = "";
  // String _last = "";
  // String _email = "";
  // String _number = "";
  //
  // createAccountPressed() async{
  //   bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(_email);
  //   if (emailValid){
  //     http.Response response = await AuthServices.register(_first, _last, _email, _number);
  //     Map responseMap = jsonDecode(response.body);
  //     if(response.statusCode== 200){
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  //     }else{
  //       errorSnackBar(context, responseMap.values.first[0]);
  //     }
  //   }else{
  //     errorSnackBar(context, "email not valid");
  //   }
  // }

  TextEditingController numberController = TextEditingController();
  TextEditingController firstController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController lastController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  _register() async {
    var data = {
      'first'  :firstController.text,
      'last' : lastController.text,
      'email' : emailController.text,
      'number' : numberController.text,
    };
    debugPrint(firstController.text);
    debugPrint(lastController.text);
    debugPrint(emailController.text);
    debugPrint(numberController.text);

    var res = await CallApi().postData(data, 'register');
    var body = json.decode(res.body);
    print(body);
    if(body['success']?? true){
      // SharedPreferences localStorage = await SharedPreferences.getInstance();
      // localStorage.setString('token', body['token']);
      // localStorage.setString('user', json.encode(body['user']));
      Navigator.push(
          context,
          new MaterialPageRoute(
              builder: (context) => LoginScreen()));
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
                height: 300,
                child: Center(child: Image.asset("asset/images/cute.png")),
              ),
            ),
            Positioned(
                top: 220,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  //height: 500,
                    height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      )),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          const Text("Register Now", style: TextStyle(fontSize: 20),),
                          const SizedBox(height: 10,),
                          buildTextFirstNameFormField(),
                          const SizedBox(height: 10,),
                          buildTextLastNameFormField(),
                          const SizedBox(height: 10,),
                          buildTextEmailFormField(),
                          const SizedBox(height: 10,),
                          buildTextNumberFormField(),
                          const SizedBox(height: 10,),
                          GestureDetector(
                            onTap: ()=> _register(),
                            child: Container(
                              width: double.maxFinite,
                              child: AppButton(
                                text: "Sign Up",
                                  size: 60,
                                  color: white,
                                  background: purple,
                                  borderColor: purple,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Already have an account?"),
                              GestureDetector(
                                  onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginScreen())),
                                  child: Text(" Login", style: TextStyle(color: purple)))
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
  TextFormField buildTextEmailFormField() {
    TextEditingController textController;
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
        hintText: "Enter your email",
        labelText: "Email",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
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
  TextFormField buildTextLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      controller: lastController,
      decoration: InputDecoration(
        hintText: "Enter Lastname",
        labelText: "Last Name",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
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

  TextFormField buildTextFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      controller: firstController,
      decoration: InputDecoration(
        hintText: "Enter Firstname",
        labelText: "First Name",

        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
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

  TextFormField buildTextNumberFormField() {
    return TextFormField(
      keyboardType: const TextInputType.numberWithOptions(),
      obscureText: false,
      controller: numberController,
      decoration: InputDecoration(
        hintText: "Enter your Phone Number",
        labelText: "Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
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
