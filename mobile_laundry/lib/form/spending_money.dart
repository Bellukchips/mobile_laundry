import 'package:flutter/material.dart';

class SpendingMoney extends StatefulWidget {
  @override
  _SpendingMoneyState createState() => _SpendingMoneyState();
}

class _SpendingMoneyState extends State<SpendingMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spending"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        hoverColor: Colors.orangeAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(25),
            child: Card(
              elevation: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Lukman",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "12-10-2019",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: Text(
                      "Rp.12.000",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[IconEdit(), IconHapus()],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: FractionalOffset.center,
      decoration: BoxDecoration(
          color: Colors.orangeAccent, borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}

class IconHapus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      alignment: FractionalOffset.center,
      decoration: BoxDecoration(
          color: Colors.redAccent, borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Icon(
          Icons.restore_from_trash,
          color: Colors.white,
        ),
      ),
    );
  }
}

