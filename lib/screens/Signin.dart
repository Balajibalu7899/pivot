import 'package:Pivot/screens/Login.dart';
import 'package:Pivot/screens/signin1.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(SignApp());
}

class SignApp extends StatefulWidget {
  @override
  _SignAppState createState() => _SignAppState();
}

class _SignAppState extends State<SignApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SigninPage(),
    );
  }
}

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Align(
                  alignment: Alignment(-0.8, 0.9),
                  child: Text(
                    "What's your Name?",
                    style: TextStyle(fontSize: 25),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      gapPadding: 4.0,
                    ),
                    hintText: "First Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      gapPadding: 4.0,
                    ),
                    hintText: "Last Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 60),
              child: Row(
                children: [
                  MaterialButton(
                    color: Colors.blue[50],
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    ),
                    shape: CircleBorder(),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signin1Page();
                      }));
                    },
                    color: Colors.blue[50],
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                    shape: CircleBorder(),
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
