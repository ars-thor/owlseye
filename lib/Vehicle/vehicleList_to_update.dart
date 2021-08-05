import 'package:flutter/material.dart';

class VehicleListUpdate extends StatelessWidget {
  const VehicleListUpdate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicle List'),
        backgroundColor: Color(0xff29cccc),
      ),
      // drawer: VehicleListUpdateShow(),
      body: VehicleListUpdateShow(),
    );
  }
}

class VehicleListUpdateShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final VehicleListUpdate = [
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
      itemCount: VehicleListUpdate.length,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(VehicleListUpdate[index]),
              onTap: () {
                return {Navigator.of(context).pushNamed('/sixth')};
                // print(VehicleListUpdate[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
