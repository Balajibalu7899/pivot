import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CommunityApp());
}
class CommunityApp extends StatefulWidget {
  @override
  _CommunityAppState createState() => _CommunityAppState();
}

class _CommunityAppState extends State<CommunityApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityPage(),
    );
  }
}
class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Community page"),
      ),
      
    );
  }
}