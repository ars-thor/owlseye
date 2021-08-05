import 'package:flutter/material.dart';

class VehicleList1 extends StatelessWidget {
  const VehicleList1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle List'),
        backgroundColor: Color(0xff29cccc),
      ),
      // drawer: VehicleListShow(),
      body: VehicleListShow(),
    );
  }
}

class VehicleListShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final VehicleList = [
      'MP0123',
      'MP0124',
      'MP0126',
      'MP0127',
      'MP0128',
      'MP01291',
      'MP01234',
      'MP0123',
      'MP0123',
    ];
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: VehicleList.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(VehicleList[index]),
              onTap: () {
                return {Navigator.of(context).pushNamed('/tenth')};
                // print(VehicleList[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
