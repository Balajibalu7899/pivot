import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(InsitesApp());
}
class InsitesApp extends StatefulWidget {
  @override
  _InsitesAppState createState() => _InsitesAppState();
}

class _InsitesAppState extends State<InsitesApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InsitesPage(),
    );
  }
}
class InsitesPage extends StatefulWidget {
  @override
  _InsitesPageState createState() => _InsitesPageState();
}

class _InsitesPageState extends State<InsitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("InsitesPage"),
      ),
    );
  }
}