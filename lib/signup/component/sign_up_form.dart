import 'package:flutter/material.dart';

import 'package:owlseye/services/auth_api.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome To Owlseye',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black),
            ),
            SizedBox(
              height: 100,
            ),
            //  Image(image: NetworkImage('url')),
            TextFormField(
              controller: mobileController,
              decoration: const InputDecoration(
                //  border: OutlineInputBorder(),
                icon: const Icon(
                  Icons.call,
                  color: Color(0xff29cccc),
                ),
                hintText: 'Enter your phone number',
                labelText: 'Mobile No.',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                icon: const Icon(
                  Icons.password,
                  color: Color(0xff29cccc),
                ),
                // border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 60,
            ),

            Container(
              width: 200,
              height: 50,
              // color: Colors.white,
              decoration: new BoxDecoration(
                border: Border.all(
                  color: Color(0xff29cccc),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () async {
                  final String mobile = mobileController.text;
                  final String password = passwordController.text;
                  AuthApi authApi = AuthApi();
                  await authApi.createUser(mobile, password);

                  Navigator.of(context).pushNamed('/second');
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20),
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
                  'Already a member?',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/second');
                    },
                    child: Text(
                      'Sign In now',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
