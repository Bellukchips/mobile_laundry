import 'package:flutter/material.dart';
import 'package:mobile_laundry/form/product.dart';
import 'package:mobile_laundry/form/profile.dart';

import 'customer.dart';
import 'report_form.dart';
import 'spending_money.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  var selectedIndex = 0;
  List<NavItem> items = [
    NavItem(Icon(Icons.home), Text("Home",style: TextStyle(fontSize: 10),), [Colors.blue[200], Colors.blue]),
    NavItem(
        Icon(Icons.event), Text("Transaction",style: TextStyle(fontSize: 10),), [Colors.purpleAccent[400], Colors.purple[100]]),
    NavItem(Icon(Icons.history), Text("History",style: TextStyle(fontSize: 10),), [Colors.pink[100], Colors.pinkAccent[400]]),
    NavItem(Icon(Icons.person_outline), Text("Account",style: TextStyle(fontSize: 10),),
        [Colors.green[100], Colors.greenAccent[400]]),
  ];

  Widget _buildList(NavItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: isSelected ? 125 : 50,
      decoration: isSelected
          ? BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: item.color),
              borderRadius: BorderRadius.all(Radius.circular(50)))
          : null,
      padding: isSelected
          ? EdgeInsets.symmetric(vertical: 10, horizontal: 20)
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              isSelected
                  ? IconTheme(
                      data: IconThemeData(color: Colors.white),
                      child: item.icon,
                    )
                  : item.icon,
              SizedBox(
                width: 5,
              ),
              isSelected
                  ? DefaultTextStyle.merge(
                      style: TextStyle(color: Colors.white), child: item.title)
                  : Container()
            ],
          ),
        ],
      ),
    );
  }

  String title = "";

  Widget _buildBody(BuildContext context) {
    Widget child;
    if (selectedIndex == 0) {
      child = HomePage();
    } else if (selectedIndex == 3) {
      child = Profile();
    } else if (selectedIndex == 1) {
//      child = Event();
    } else {
//      child = History();
    }
    return new Container(child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.blueAccent[200],
      ),
      body: _buildBody(context),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: items.map((i) {
              var itemIndex = items.indexOf(i);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = itemIndex;
                  });
                  if (itemIndex == 0) {
                    if (selectedIndex == 0) {
                      setState(() {
                        title = "";
                      });
                    } else {
                      setState(() {
                        title = "";
                      });
                    }
                  } else if (selectedIndex == 2) {
                    setState(() {
                      title = "Events Passed";
                    });
                  } else if (selectedIndex == 1) {

                    setState(() {
                      title = "Events";
//                      DataSearch();

                    });
                    print("Events");
                  } else {
                    setState(() {
                      title = "";
                    });
                    print("");
                  }
                },
                child: _buildList(i, selectedIndex == itemIndex),
              );
            }).toList()),
      ),
    );
  }
}

class NavItem {
  final Icon icon;
  final Text title;
  final List<Color> color;

  NavItem(this.icon, this.title, this.color);
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Material(
          elevation: 5,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70)),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70)),
                gradient: LinearGradient(
                    colors: [Colors.blueAccent[200], Colors.blueAccent[200]],
                    end: Alignment.topLeft,
                    begin: Alignment.topRight)),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: CircleAvatar(
                    maxRadius: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: CircleAvatar(
                    maxRadius: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: CircleAvatar(
                    maxRadius: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Center(
            child: CircleAvatar(
              maxRadius: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    "img/images.png",
                    scale: 1,
                  )),
            ),
          ),
        )
      ],
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Header(),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30),
                  child: Text(
                    "Hi Lukman !",
                    style: TextStyle(color: Colors.white, fontSize: 27),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Text(
                    "Selamat datang kembali di ",
                    style: TextStyle(color: Colors.grey[200], fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 30),
                  child: Text(
                    "Rainbow Laundry",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (c) => Product()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.pink,
                    elevation: 10,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.pink[100],
                                Colors.pinkAccent[400]
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: <Widget>[
                          Icon(
                            Icons.library_books,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Product",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (a) => Customer()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.orange,
                    elevation: 10,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.purple[100],
                                Colors.purpleAccent[400]
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: <Widget>[
                          Icon(
                            Icons.supervisor_account,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Customer",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => SpendingMoney()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.lightGreen,
                    elevation: 10,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Colors.green[100],
                                Colors.greenAccent[400]
                              ])),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: <Widget>[
                          Icon(
                            Icons.monetization_on,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Spending",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.lightBlue,
                  elevation: 10,
                  child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.lightBlue[100],
                              Colors.lightBlue[400]
                            ])),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: <Widget>[
                        Icon(
                          Icons.attach_money,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Return",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReportForm()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.orange,
                    elevation: 10,
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Colors.orange[100], Colors.orange[400]])),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(children: <Widget>[
                          Icon(
                            Icons.report,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Report",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
//                Card(
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(20)),
//                  color: Colors.grey,
//                  elevation: 10,
//                  child: Container(
//                    width: 150,
//                    height: 100,
//                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.circular(20),
//                        gradient: LinearGradient(
//                            begin: Alignment.bottomLeft,
//                            end: Alignment.topRight,
//                            colors: [Colors.grey, Colors.grey[400]])),
//                    child: Padding(
//                      padding: const EdgeInsets.all(20.0),
//                      child: Column(children: <Widget>[
//                        Icon(
//                          Icons.supervisor_account,
//                          size: 30,
//                          color: Colors.white,
//                        ),
//                        SizedBox(
//                          height: 5,
//                        ),
//                        Text(
//                          "Account",
//                          style: TextStyle(color: Colors.white),
//                        )
//                      ]),
//                    ),
//                  ),
//                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
  }
}