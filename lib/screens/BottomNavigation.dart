import 'package:Pivot/screens/Community.dart';
import 'package:Pivot/screens/home.dart';
import 'package:Pivot/screens/insights.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Bottom());
}

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomPage(),
    );
  }
}

class BottomPage extends StatefulWidget {
  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int currentindex = 0;
  final List<Widget> children = [HomePage(), InsitesPage(), CommunityPage()];
  void ontapnavbar(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 4,
          currentIndex: currentindex,
          onTap: ontapnavbar,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(
                  "Home",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.inbox,
                ),
                title: Text(
                  "Insights",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                ),
                title: Text(
                  "Community",
                )),
          ]),
    );
  }
}
