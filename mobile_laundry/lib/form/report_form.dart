import 'package:flutter/material.dart';

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  String dropdownValue = 'Januari';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bulan",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.redAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'Januari',
                        'Februari',
                        'Maret',
                        'April',
                        'Mei',
                        'Juni',
                        'Juli',
                        'Agustus',
                        'September',
                        'Oktober',
                        'November',
                        'Desember'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: <Widget>[
                          ButtonFilter(),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: ButtonReset(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Transaction process",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Rp. 0,-",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Transaction success",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Rp. 100.000,-",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Card(
                      color: Colors.grey,
                      child: Container(
                        height: 100,
                        width: 300,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Pengeluaran",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Rp.80.000,-",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Card(
                    color: Colors.redAccent,
                    child:Container(
                      width: 150,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Rugi",style: TextStyle(color: Colors.white,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Rp.0,-",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                        ],
                      ),
                    ) ,
                  ),
                  Card(
                    color: Colors.green,
                    child:Container(
                      width: 150,
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Laba",style: TextStyle(color: Colors.white,),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Rp.20.000,-",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          ),
                        ],
                      ),
                    ) ,
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonFilter extends StatefulWidget {
  @override
  _ButtonFilterState createState() => _ButtonFilterState();
}

class _ButtonFilterState extends State<ButtonFilter> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        alignment: FractionalOffset.center,
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
        ),
        child: Text(
          "Filter",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ButtonReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      child: Container(
        alignment: FractionalOffset.center,
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Text(
          "Reset",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
