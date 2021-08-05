import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileVehicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color(0xff29cccc),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Text('Our Services In Side Menu'),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xff29cccc),

            // image: DecorationImage(
            //     fit: BoxFit.fill, image: AssetImage('images/icon.jpg')),
          ),
          child: Text(
            'Owlseye',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: Icon(Icons.input),
          title: Text('Welcome'),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.verified_user),
          title: Text('Profile'),
          onTap: () => {Navigator.of(context).pushNamed('/fourth')},
        ),
        ListTile(
          leading: Icon(Icons.car_rental),
          title: Text('Vehicle'),
          onTap: () => {Navigator.of(context).pushNamed('/seventh')},
        ),
        ListTile(
          leading: Icon(Icons.car_repair),
          title: Text('Repair History'),
          onTap: () => {Navigator.of(context).pushNamed('/eleven')},
        ),
        ListTile(
          leading: Icon(Icons.design_services),
          title: Text('Our Services'),
          onTap: () => {Navigator.of(context).pushNamed('/fifth')},
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Logout'),
          onTap: () => {Navigator.of(context).pushNamed('/second')},
        ),
      ]),
    );
  }
}
