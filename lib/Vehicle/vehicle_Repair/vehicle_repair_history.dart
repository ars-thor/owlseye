import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class RepairHistory extends StatefulWidget {
  @override
  _RepairHistoryState createState() => _RepairHistoryState();
}

class _RepairHistoryState extends State<RepairHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Repair History"),
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
        padding: EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(padding: const EdgeInsets.all(8.0)),
                Text(
                  'Repair History',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 90,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Download',
                      style: TextStyle(fontSize: 18),
                    )),
              ],
            ),
            Container(
              // padding: EdgeInsets.all(10),
              width: 500,
              height: 516,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Veh no :  0123 ',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Date : 01-01-2021',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    // VerticalDivider(
                    //   color: Colors.black,
                    //   endIndent: 350,
                    // ),
                    SizedBox(
                      height: 100,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.black38,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Invoice :   012357',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Customer :   XYZ',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Mobile :   123456',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Address: Lalghati, Bhopal',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Divider(
                      height: 1,
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black38,
                ),
                Table(
                  defaultColumnWidth: FixedColumnWidth(54.0),
                  defaultVerticalAlignment: TableCellVerticalAlignment.top,
                  border: TableBorder.all(
                      color: Colors.black38,
                      style: BorderStyle.solid,
                      width: 1),
                  children: [
                    TableRow(children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Part Id',
                              style: TextStyle(fontSize: 13.0),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                      Column(children: [
                        Text(
                          'Part Name',
                          style: TextStyle(fontSize: 13.0),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]),
                      Column(children: [
                        Text(
                          'Rate',
                          style: TextStyle(fontSize: 13.0),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]),
                      Column(children: [
                        Text(
                          'Unit',
                          style: TextStyle(fontSize: 13.0),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]),
                      Column(children: [
                        Text(
                          'Tax',
                          style: TextStyle(fontSize: 13.0),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]),
                      Column(children: [
                        Text(
                          'Total',
                          style: TextStyle(fontSize: 13.0),
                          overflow: TextOverflow.ellipsis,
                        )
                      ]),
                      Column(children: [
                        Text(
                          'Comment',
                          style: TextStyle(fontSize: 13.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 200,
                        ),
                      ]),
                    ]),
                  ],
                ),
                Divider(
                  thickness: 2,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Grand Total Rs. ____________',
                  style: TextStyle(fontSize: 18),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
