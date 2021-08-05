import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:owlseye/model/log_model.dart';

class AuthApi {
  //for sign in
  Future<LogModel> singIN(String mobile, String password) async {
    final String apiUrl = "https://owlseyes.herokuapp.com/auth/signin";

    final response = await http.post(apiUrl,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{"password": password, "mobile": mobile}));

    print(jsonEncode(<String, String>{"password": password, "mobile": mobile}));

    print(response.statusCode);
    if (response.statusCode == 200) {
      final logModel = logModelFromJson(response.body);
      print(response.body);
      return logModel;
    }
  }

  Future<LogModel> createUser(String mobile, String password) async {
    final String apiUrl = "https://owlseyes.herokuapp.com/auth/signup";

    final response = await http.put(apiUrl,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{"password": password, "mobile": mobile}));

    print(response.body);
    if (response.statusCode == 201) {
      final logModel = logModelFromJson(response.body);
      print(response.body);
      return logModel;
    }

    print(response.statusCode);
  }
}
