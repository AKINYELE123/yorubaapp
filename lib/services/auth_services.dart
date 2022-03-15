import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:suresports/services/globals.dart';


class AuthServices{
  static Future<http.Response> register(
      String first, String last, String email, String number) async{
    Map data = {
      "first": first,
      "last": last,
      "email": email,
      "number": number,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL+"student_registration");
    http.Response response = await http.post(url,
    headers: headers,
    body: body,
    );
    print(response.body);
    return response;
  }



  static Future<http.Response> login(
       String number) async{
    Map data = {
      "number": number,
    };
    var body = json.encode(data);
    var url = Uri.parse(baseURL+"student_login");
    http.Response response = await http.post(url,
      headers: headers,
      body: body,
    );
    print(response.body);
    return response;
  }
}