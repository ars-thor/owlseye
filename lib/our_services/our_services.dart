import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Services"),
        elevation: 0.0,
        backgroundColor: Color(0xff29cccc),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushNamed('/third');
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              'Our Services',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: new Card(
                child: Row(children: [
                  Icon(
                    Icons.list,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('List Of Facilities',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: new Card(
                child: Row(children: [
                  Icon(
                    Icons.list,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Products',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: new Card(
                child: Row(children: [
                  Icon(
                    Icons.list,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Garage Search',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: new Card(
                child: Row(children: [
                  Icon(
                    Icons.list,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('SpareParts',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: new Card(
                child: Row(children: [
                  Icon(
                    Icons.list,
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Insurance',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
              ),
              decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black,
                    blurRadius: 1.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
