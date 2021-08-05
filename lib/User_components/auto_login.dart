import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageLogin extends StatefulWidget {
  @override
  _LocalStorageLoginState createState() => _LocalStorageLoginState();
}

class _LocalStorageLoginState extends State<LocalStorageLogin> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoggedIn = false;
  String mobile = '';
  String pass = '';

  @override
  void initState() {
    super.initState();
    autoLogIn();
  }

  void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String userId = prefs.getString('username');
    final String password = prefs.getString('password');

    if (userId != null) {
      setState(() {
        isLoggedIn = true;
        mobile = userId;
        pass = password;
      });
      return;
    }
  }

  Future<Null> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', null);
    prefs.setString('password', null);

    setState(() {
      mobile = '';
      pass = '';
      isLoggedIn = false;
    });
  }

  Future<Null> loginUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', mobileController.text);
    prefs.setString('password', passwordController.text);

    setState(() {
      mobile = mobileController.text;
      pass = passwordController.text;

      isLoggedIn = true;
    });

    mobileController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Login Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            !isLoggedIn
                ? TextField(
                    textAlign: TextAlign.center,
                    controller: mobileController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Please enter your name'),
                  )
                : Text('You are logged in as $mobile'),
            SizedBox(height: 10.0),
            RaisedButton(
              onPressed: () {
                isLoggedIn ? logout() : loginUser();
              },
              child: isLoggedIn ? Text('Logout') : Text('Login'),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
