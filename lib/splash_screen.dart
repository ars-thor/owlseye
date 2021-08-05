import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 400.00,
            height: 200.00,
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: ExactAssetImage('images/logo.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.black,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          SizedBox(height: 50),
          Container(
            width: 200,
            height: 50,
            // color: Colors.white,
            decoration: new BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                print(nameController.text);
                Navigator.of(context).pushNamed('/eight');
              },
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                'Get Started',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
