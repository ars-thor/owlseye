// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:harshexpress/components/custom_sufixicon.dart';
// import 'package:harshexpress/components/form_error.dart';
// import 'package:harshexpress/helper/keyboard.dart';
// import 'package:harshexpress/screens/forgot_password/forgot_password_screen.dart';
// import 'package:harshexpress/screens/home/home_screen.dart';
// import 'package:harshexpress/screens/sign_in/sign_in_screen.dart';
// import '../../../components/default_button.dart';
// import '../../../constants.dart';
// import 'package:harshexpress/sizeconfig.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:get/get.dart';

// class SignForm extends StatefulWidget {
//   @override
//   _SignFormState createState() => _SignFormState();
// }

// class _SignFormState extends State<SignForm> {
//   @override
//   void initState() {
//     getValidate().whenComplete(() async {
//       Timer(Duration(seconds: 1),
//           () => Get.to(finalToken == null ? SignInScreen() : HomeScreen()));
//     });

//     super.initState();
//   }

//   final _formKey = GlobalKey<FormState>();
//   String finalToken;
//   String email;
//   String password;
//   bool remember = false;

//   final List<String> errors = [];

//   void addError({String error}) {
//     if (!errors.contains(error))
//       setState(() {
//         errors.add(error);
//       });
//   }

//   void removeError({String error}) {
//     if (errors.contains(error))
//       setState(() {
//         errors.remove(error);
//       });
//   }

//   Future getValidate() async {
//     final SharedPreferences sharedPreferences =
//         await SharedPreferences.getInstance();
//     var obtainedToken = sharedPreferences.getString('token');
//     setState(() {
//       finalToken = obtainedToken;
//     });
//   }

//   void submitForm(String email, String password) async {
//     final SharedPreferences sharedPreferences =
//         await SharedPreferences.getInstance();

//     var json =
//         jsonEncode(<String, String>{'username': email, 'password': password});

//     final response = await http.post(
//         Uri.https('harshtrain.appspot.com', '/api/api-token-auth/'),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json);
//     // Let's Check the api status
//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       print(response.statusCode);
//       if (jsonResponse != null) {
//         sharedPreferences.setString('token', jsonResponse['token']);
//         Get.to(HomeScreen());
//       }
//     } else {
//       print(response.body);
//       print(response.statusCode);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           buildEmailFormField(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           buildPasswordFormField(),
//           SizedBox(height: getProportionateScreenHeight(30)),
//           Row(
//             children: [
//               Checkbox(
//                 value: remember,
//                 activeColor: kPrimaryColor,
//                 onChanged: (value) {
//                   setState(() {
//                     remember = value;
//                   });
//                 },
//               ),
//               Text("Remember me"),
//               Spacer(),
//               GestureDetector(
//                 onTap: () => Navigator.pushNamed(
//                     context, ForgotPasswordScreen.routeName),
//                 child: Text(
//                   "Forgot Password",
//                   style: TextStyle(decoration: TextDecoration.underline),
//                 ),
//               )
//             ],
//           ),
//           FormError(errors: errors),
//           SizedBox(height: getProportionateScreenHeight(20)),
//           DefaultButton(
//             text: "Continue",
//             press: () {
//               {
//                 _formKey.currentState.save();
//                 // if all are valid then go to success screen
//                 KeyboardUtil.hideKeyboard(context);
//                 // Navigator.pushNamed(context, HomeScreen.routeName);
//                 setState(() {
//                   submitForm(email, password);
//                 });
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   TextFormField buildPasswordFormField() {
//     return TextFormField(
//       obscureText: true,
//       onSaved: (newValue) => password = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kPassNullError);
//         } else if (value.length >= 8) {
//           removeError(error: kShortPassError);
//         }
//         return null;
//       },
//       validator: (value) {
//         if (value.isEmpty) {
//           addError(error: kPassNullError);
//           return "";
//         } else if (value.length < 8) {
//           addError(error: kShortPassError);
//           return "";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         labelText: "Password",
//         hintText: "Enter your password",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
//       ),
//     );
//   }

//   TextFormField buildEmailFormField() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       onSaved: (newValue) => email = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty) {
//           removeError(error: kEmailNullError);
//         } else if (emailValidatorRegExp.hasMatch(value)) {
//           removeError(error: kInvalidEmailError);
//         }
//         return null;
//       },
//       validator: (value) {
//         if (value.isEmpty) {
//           addError(error: kEmailNullError);
//           return "";
//         } else if (!emailValidatorRegExp.hasMatch(value)) {
//           addError(error: kInvalidEmailError);
//           return "";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         labelText: "Email",
//         hintText: "Enter your email",
//         // If  you are using latest version of flutter then lable text and hint text shown like this
//         // if you r using flutter less then 1.20.* then maybe this is not working properly
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
//       ),
//     );
//   }
// }
