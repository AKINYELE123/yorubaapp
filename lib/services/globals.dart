import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suresports/constant/colors.dart';

const String baseURL = "http://codesandbox.com.ng/yorubalearning/api/";
const Map<String, String> headers = {"content-type": "application/json"};


errorSnackBar(BuildContext context,String text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        backgroundColor: purple,
        content: Text(text),
      duration: const Duration(seconds: 7),
    )
  );
}