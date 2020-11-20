import 'package:flutter/material.dart';
import 'package:Pivot/screens/signin2.dart';

import 'Signin.dart';

void main(List<String> args) {
  runApp(Signin1App());
}
class Signin1App extends StatefulWidget {
  @override
  _Signin1AppState createState() => _Signin1AppState();
}

class _Signin1AppState extends State<Signin1App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Signin1Page(),
    );
  }
}
class Signin1Page extends StatefulWidget {
  @override
  _Signin1PageState createState() => _Signin1PageState();
}

class _Signin1PageState extends State<Signin1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Align(
              alignment:Alignment(-0.8,0.5),
              child: Text("What's Your Email?",style: TextStyle(fontSize: 25),)),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70),
                      gapPadding: 4.0,
                    ),
                    hintText: "yourname@company.com"),
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
                        return SigninPage();
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
                        return Signin2Page();
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
    );
  }
}