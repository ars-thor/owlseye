import 'package:flutter/material.dart';
import 'package:owlseye/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Owlseye',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: VehicleList1(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
