// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// class OtpSCreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             OtpTextField(
//                 numberOfFields: 5,
//                 borderColor: Color(0xFF512DA8),
//                 showFieldAsBox:
//                     true, //set to true to show as box or false to show as dash
//                 onCodeChanged: (String code) {
//                   //handle validation or checks here
//                 },
//                 onSubmit: (String verificationCode) {
//                   showDialog(
//                       context: context,
//                       builder: (context) {
//                         return AlertDialog(
//                           title: Text("Verification Code"),
//                           content: Text('Code entered is $verificationCode'),
//                         );
//                       });
//                 } // end onS
//                 ),
//             TextButton(
//               // color: Colors.white,
//               child: Text(
//                 'Succesfully Verified',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Color(
//                     0xff29cccc,
//                   ),
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/second');
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
