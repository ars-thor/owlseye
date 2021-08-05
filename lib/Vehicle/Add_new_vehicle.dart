import 'package:flutter/material.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key key}) : super(key: key);

  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
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
        title: Text(" Add Vehicle"),
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
        padding: new EdgeInsets.all(10.0),
        child: Material(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Add Vehicle',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.car_rental,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter your Vehicle No.',
                    labelText: 'Vehicle No.',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.work,
                      color: Color(0xff29cccc),
                    ),
                    labelText: 'Company',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.model_training,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter model',
                    labelText: 'Model',
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
                  controller: dateCtl,
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.date_range,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter MFG',
                    labelText: 'MFG',
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
                      Icons.person,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter owner name',
                    labelText: 'Owner',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(
                      Icons.person,
                      color: Color(0xff29cccc),
                    ),
                    hintText: 'Enter user id',
                    labelText: 'User ID',
                  ),
                ),
                Row(
                  children: [
                    new Container(
                        padding: const EdgeInsets.only(left: 50.0, top: 40.0),
                        child: new ElevatedButton(
                          child: const Text(
                            'Submit',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            // print(nameController.text);
                            Navigator.of(context).pushNamed('/fifth');
                          },
                        )),
                    SizedBox(
                      width: 40,
                    ),
                    new Container(
                        padding: const EdgeInsets.only(left: 50.0, top: 40.0),
                        child: new ElevatedButton(
                          child: const Text(
                            'Back',
                            style: TextStyle(fontSize: 18),
                          ),
                          onPressed: () {
                            // print(nameController.text);
                            Navigator.of(context).pushNamed('/third');
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
