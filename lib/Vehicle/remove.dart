import 'package:flutter/material.dart';

class Remove extends StatefulWidget {
  const Remove({Key key}) : super(key: key);

  @override
  _RemoveState createState() => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Hi, This is remove page'),
      ),
    );
  }
}
