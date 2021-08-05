// import 'dart:html';
import 'dart:io';
import 'package:image_picker_form_field/image_picker_form_field.dart';

import 'package:flutter/material.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key key}) : super(key: key);

  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController dateCtl = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Registration"),
        elevation: 0.0,
        backgroundColor: Color(0xff29cccc),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushNamed('/third');
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: new EdgeInsets.all(20.0),
        child: Material(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'User Registration',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.person,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your name',
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.phone,
                      color: Color(0xff29cccc),
                    ),
                    labelText: 'Phone',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.mail,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your email',
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.location_city,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your Address',
                    labelText: 'Address',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.location_city_sharp,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your State',
                    labelText: 'State',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.location_city,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your city',
                    labelText: 'City',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: const Icon(
                      Icons.image,
                      color: Color(0xff29cccc),
                    ),
                    labelText: 'Photo',
                  ),
                ),
                ImagePickerFormField(
                  child: Container(
                    height: 40,
                    child: Center(child: Text("Select Photo")),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                            color: Theme.of(context).disabledColor, width: 1)),
                  ),
                  previewEnabled: true,
                  autovalidate: true,
                  context: context,
                  onSaved: (File value) {
                    print("on saved called");
                  },
                  validator: (File value) {
                    if (value == null)
                      return "Please select a photo!";
                    else
                      return null;
                  },
                  initialValue: null, //File("some source")
                ),
                TextFormField(
                  controller: dateCtl,
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.calendar_today,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your date of birth',
                    labelText: 'Dob',
                  ),
                  onTap: () async {
                    DateTime date = DateTime(1900);
                    FocusScope.of(context).requestFocus(new FocusNode());

                    date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100));

                    dateCtl.text = date.toIso8601String();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.pin_drop,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your PinCode',
                    labelText: 'Pincode',
                  ),
                ),
                Row(
                  children: [
                    new Container(
                        padding: const EdgeInsets.only(left: 50.0, top: 15.0),
                        child: new ElevatedButton(
                          child: const Text('Submit'),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/fifth');
                          },
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    new Container(
                        padding: const EdgeInsets.only(left: 50.0, top: 15.0),
                        child: new ElevatedButton(
                          child: const Text('Update'),
                          onPressed: () {
                            //   Navigator.of(context).pushNamed('/fifth');
                          },
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
