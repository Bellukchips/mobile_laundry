import 'package:flutter/material.dart';
import 'package:mobile_laundry/custom/customPaint.dart';
import 'package:mobile_laundry/form/home.dart';
import 'package:mobile_laundry/form/register.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
    title: "My Laundry",
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Stack(
            children: <Widget>[
              CustomPaint(
                painter: CustomPaintku(),
                child: Container(
                  height: 250,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                        child: Image.asset("img/images.png",scale: 3,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("My Laundry",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    )
                  ],
                ),
              ),
            ],
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: "Email address",
                        labelText: "Email address",
                        hoverColor: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        labelText: "Password",
                        hoverColor: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (x)=> PageHome()
                    ));
                  }, child: ButtonLogin())
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "img/FBc.png",
                scale: 4,
              ),
              Image.asset(
                "img/GOGLE.png",
                scale: 4,
              ),
            ],
          ),
          Center(
            child: Text(
              "Login dengan akun sosial media",
              style: TextStyle(fontSize: 9, color: Colors.grey),
            ),
          ),
          SizedBox( 
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Anda belum memiliki akun ?",
                style: TextStyle(color: Colors.grey),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => RegisterForm()));
                   },
                  child: Text(
                    " klik di sini",
                    style: TextStyle(color: Colors.blueAccent),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 500,
      alignment: FractionalOffset.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueAccent,
            Colors.lightBlueAccent
          ]),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        "LOGIN",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
