import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Profile"),
      //   automaticallyImplyLeading: false,
      // ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent[200],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(140),
                          bottomRight: Radius.circular(140))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Center(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(80),
                                  child: Image.asset(
                                    "img/images.png",
                                    width: 100,
                                    height: 100,
                                  )),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Muh Lukman Akbar Prihandoyo",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Table(
                textDirection: TextDirection.ltr,
                defaultColumnWidth: FixedColumnWidth(10.0),
                children: [
                  _buildTableRow("Nama," +"Lukman"),
                  _buildTableRow("Email," +"muhamadlukman@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TableRow _buildTableRow(String listOfNames) {
  return TableRow(
    children: listOfNames.split(',').map((name) {
      return Container(
        alignment: Alignment.centerLeft,
        child:
            Text(name, style: TextStyle(fontSize: 15.0, color: Colors.white)),
        padding: EdgeInsets.all(8.0),
      );
    }).toList(),
  );
}
