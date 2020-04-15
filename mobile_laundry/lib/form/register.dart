import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.blueAccent[200],
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: <Widget>[
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Full Name",
                        labelText: "Full Name",
                        icon: Icon(Icons.person)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        labelText: "Email Address",
                        icon: Icon(Icons.email)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        icon: Icon(Icons.lock_outline)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
