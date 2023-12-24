import 'package:flutter/material.dart';
import 'package:vehicle_repair/Mech%20home%20tabbar.dart';
import 'package:vehicle_repair/Mech%20rating.dart';
import 'package:vehicle_repair/Mech%20service.dart';

class Mechnavigationbarrr extends StatefulWidget {
  const Mechnavigationbarrr({super.key});

  @override
  State<Mechnavigationbarrr> createState() => _MechnavigationbarrrState();
}

class _MechnavigationbarrrState extends State<Mechnavigationbarrr> {

  int selectedindex=0;
  static List abhinavv=[
   Mechtabbarrr(),Mechserviceee(),
   Mechratinggg()
  ];
  void onitemtapped(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: abhinavv.elementAt(selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff0D0140),
        unselectedItemColor: Color(0xffA49EB5),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/repair-tool 1.png")),
            label: "Request",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/plumber 1.png")), label: "Service"),
          BottomNavigationBarItem(
              icon: (Icon(
                Icons.star,
                size: 40,
              )),
              label: "Rating"),
         
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        iconSize: 40,
        onTap: onitemtapped,
        elevation: 5,
      ),
    );
  }
}