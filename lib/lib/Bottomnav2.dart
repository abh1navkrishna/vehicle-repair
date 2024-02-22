import 'package:flutter/material.dart';


import 'Mech/Rating.dart';
import 'Mech/Servicemech.dart';
import 'Mech/mech_home.dart';
import 'Mech/mech_servicehome.dart';


class Bottomnava2 extends StatefulWidget {
  const Bottomnava2({super.key});

  @override
  State<Bottomnava2> createState() => _Bottomnava2State();
}

class _Bottomnava2State extends State<Bottomnava2> {
  int _currenSelectedIndex=0;
  var pages=[Mech_home(),Servicemech(),Mech_rating()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currenSelectedIndex],

      bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey,
          currentIndex:_currenSelectedIndex,
          onTap: (newIndex) {
            setState(() {
              _currenSelectedIndex = newIndex;
            });
          },
          items:const [
            BottomNavigationBarItem(icon:Icon(Icons.engineering),label:'Request'),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label:'Service'),
            BottomNavigationBarItem(icon:Icon(Icons.star),label:'Rating'),

          ]),


    );
  }
}
