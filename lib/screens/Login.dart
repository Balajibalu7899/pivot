import 'package:Pivot/screens/BottomNavigation.dart';
import 'package:Pivot/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Pivot/screens/Signin.dart';

void main(List<String> args) {
  runApp(MyLogin());
}

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Image.asset(
            "assets/images/pivot.png",
            height: height * 0.25,
            width: width * 0.3,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Welcome to",
                    style: TextStyle(color: Colors.black, fontSize: 30)),
                TextSpan(
                    text: "PivotD",
                    style: TextStyle(color: Colors.blue, fontSize: 30))
              ])),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5),
            child: Row(
              children: [
                Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Click Here",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120, right: 120, top: 50),
            child: SizedBox(
              height: 45,
              child: RaisedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BottomPage();
                  }));
                },
                icon: Icon(
                  Icons.forward,
                  color: Colors.blue,
                ),
                label: Text(
                  "Log In",
                  style: TextStyle(color: Colors.blue),
                ),
                color: Colors.blue[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, top: 20),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SigninPage();
                      }));
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
            child: SizedBox(
              height: 50,
              child: RaisedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
                label: Text(
                  "Continue with Gmail",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                color: Colors.red[50],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "By Creating account, I agree to Company's Terms of Services,Payments",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                Text(
                  " Terms of Services,Privacy Policy, and Non-discrimination Policy",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
