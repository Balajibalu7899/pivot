import 'package:flutter/material.dart';
import 'package:Pivot/screens/signin1.dart';
import 'package:Pivot/screens/home.dart';

void main(List<String> args) {
  runApp(Signin2App());
}

class Signin2App extends StatefulWidget {
  @override
  _Signin2AppState createState() => _Signin2AppState();
}

class _Signin2AppState extends State<Signin2App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signin2Page(),
    );
  }
}

class Signin2Page extends StatefulWidget {
  @override
  _Signin2PageState createState() => _Signin2PageState();
}

class _Signin2PageState extends State<Signin2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Align(
                alignment: Alignment(-0.8, 0.9),
                child: Text(
                  "Create a password!",
                  style: TextStyle(fontSize: 25),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Password must includeatleast one"),
                Text("symbol and be 8 or more characters long"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    gapPadding: 4.0,
                  ),
                  hintText: "Password"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(70),
                    gapPadding: 4.0,
                  ),
                  hintText: "Re-Password"),
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
                      return Signin1Page();
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
                      return HomePage();
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
