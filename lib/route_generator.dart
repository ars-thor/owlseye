import 'package:flutter/material.dart';
import 'package:owlseye/User_components/Profile_vehicle.dart';
import 'package:owlseye/User_components/User_registration.dart';
import 'package:owlseye/User_components/user_login.dart';
import 'package:owlseye/Vehicle/update.dart';
import 'package:owlseye/Vehicle/vehicleList_to_update.dart';
import 'package:owlseye/Vehicle/vehicle_Repair/vehicle_repair_history.dart';
import 'package:owlseye/Vehicle/vehicle_list_sidebar.dart';
import 'package:owlseye/Vehicle/vehicle_options.dart';
import 'package:owlseye/our_services/our_services.dart';
// import 'package:owlseye/signup/component/otp.dart';
import 'package:owlseye/signup/component/sign_up_form.dart';
import 'package:owlseye/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/second':
        return MaterialPageRoute(builder: (_) => UserLogin());
      case '/third':
        return MaterialPageRoute(builder: (_) => ProfileVehicle());
      case '/fourth':
        return MaterialPageRoute(builder: (_) => UserRegistration());
      case '/fifth':
        return MaterialPageRoute(builder: (_) => OurServices());
      case '/sixth':
        return MaterialPageRoute(builder: (_) => RepairHistory());
      case '/seventh':
        return MaterialPageRoute(builder: (_) => VehicleOPtions());
      case '/eight':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/nine':
        return MaterialPageRoute(builder: (_) => VehicleList1());
      case '/tenth':
        return MaterialPageRoute(builder: (_) => UpdateVehicle());
      case '/eleven':
        return MaterialPageRoute(builder: (_) => VehicleListUpdate());

      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('Error,Try Again'),
      ),
    );
  });
}
