import 'package:flutter/material.dart';
import 'package:owlseye/Vehicle/Add_new_vehicle.dart';
import 'package:owlseye/Vehicle/remove.dart';
import 'package:owlseye/Vehicle/vehicle_list_sidebar.dart';

class VehicleOPtions extends StatefulWidget {
  @override
  State<VehicleOPtions> createState() => _VehicleOPtionsState();
}

class _VehicleOPtionsState extends State<VehicleOPtions> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    AddVehicle(),
    VehicleList1(),
    Remove(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Update',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove),
            label: 'Remove',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff29cccc),
        onTap: _onItemTapped,
      ),
    );
  }
}
