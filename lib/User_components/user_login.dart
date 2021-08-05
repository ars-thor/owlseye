import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owlseye/User_components/Profile_vehicle.dart';
import 'package:owlseye/model/log_model.dart';
import 'package:owlseye/services/auth_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;
  String finalToken;

  void initState() {
    getValidate().whenComplete(() async {
      Timer(Duration(seconds: 1),
          () => Get.to(finalToken == null ? UserLogin() : ProfileVehicle()));
    });

    super.initState();
  }

  Future getValidate() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedToken = sharedPreferences.getString('token');
    setState(() {
      finalToken = obtainedToken;
    });
  }

  void submitForm(String email, String password) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    var json =
        jsonEncode(<String, String>{'username': email, 'password': password});

    final response = await http.post(
        Uri.https('harshtrain.appspot.com', '/api/api-token-auth/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json);
    // Let's Check the api status
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      print(response.statusCode);
      if (jsonResponse != null) {
        sharedPreferences.setString('token', jsonResponse['token']);
        Get.to(ProfileVehicle());
      }
    } else {
      print(response.body);
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/icon.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 100,
                  ),
                  borderRadius: BorderRadius.circular(110),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'User Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please enter your credentials',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                decoration: new BoxDecoration(
                  border: Border.all(
                    color: Color(0xff29cccc),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: mobileController,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: 'Mobile',
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff29cccc),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: !this._showPassword,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.security,
                            color: Color(0xff29cccc),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: this._showPassword
                                  ? Color(0xff29cccc)
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password ?',
                            style: TextStyle(
                                color: Color(
                                  0xff29cccc,
                                ),
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 50,
                          width: 250,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: new BoxDecoration(
                            border: Border.all(
                              color: Color(0xff29cccc),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: TextButton(
                            // color: Colors.white,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(
                                  0xff29cccc,
                                ),
                              ),
                            ),
                            onPressed: () async {
                              String mob = mobileController.text;
                              String pass = passwordController.text;
                              LogModel logModel =
                                  await AuthApi().singIN(mob, pass);

                              if (logModel.token != null) {
                                Navigator.of(context).pushNamed('/third');
                              }
                            },
                          )),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 150,
                  ),
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/eight');
                      },
                      child: Text(
                        'Sign up now',
                        style: TextStyle(fontSize: 18),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
