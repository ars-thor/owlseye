import 'package:flutter/material.dart';
import 'package:owlseye/model/vehicle.dart';

class User extends StatefulWidget {
  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  void initState() {
    super.initState();
    dummy();
  }

  List<Vehicle> vehicleList = [];
  void dummy() {
    vehicleList.add(Vehicle(
        invoice: "123449848",
        PhoneNo: "2345677",
        customer_name: "Aditya",
        vNo: "129",
        date: "09/07/1998"));
    vehicleList.add(Vehicle(
        invoice: "123449848",
        PhoneNo: "2345677",
        customer_name: "amit",
        vNo: "233343",
        date: "09/07/1998"));
    vehicleList.add(Vehicle(
        invoice: "123449848",
        PhoneNo: "2345677",
        customer_name: "tenzin",
        vNo: "235460",
        date: "09/07/1998"));
    vehicleList.add(Vehicle(
        invoice: "123449848",
        PhoneNo: "2345677",
        customer_name: "mayank",
        vNo: "2330",
        date: "09/07/1998"));
    vehicleList.add(Vehicle(
        invoice: "123449848",
        PhoneNo: "2345677",
        customer_name: "anup",
        vNo: "2330",
        date: "09/07/1998"));
    vehicleList.add(Vehicle(
        invoice: "123449848",
        PhoneNo: "2345677",
        customer_name: "vinay",
        vNo: "2330",
        date: "09/07/1998"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("User Data For Demo"),
      ),
      body: ListView.builder(
          itemCount: vehicleList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              color: Colors.amber[100],
              child: Column(
                children: [
                  Text(vehicleList[index].customer_name),
                  Text(vehicleList[index].PhoneNo),
                  Text(vehicleList[index].date),
                  Text(vehicleList[index].invoice),
                ],
              ),
            );
          }),
    ));
  }
}
