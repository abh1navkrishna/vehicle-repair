import 'package:flutter/material.dart';
import 'package:vehicle_repair/Admin%20home.dart';
import 'package:vehicle_repair/Admin%20login.dart';
import 'package:vehicle_repair/Admin%20notification.dart';
import 'package:vehicle_repair/Admin%20payment.dart';

class Adminavigationnn extends StatefulWidget {
  const Adminavigationnn({super.key});

  @override
  State<Adminavigationnn> createState() => _AdminavigationnnState();
}

class _AdminavigationnnState extends State<Adminavigationnn> {
 int selectedindex=0;
   var abhinavv=[
   Adminhomeee(),Adminpaymenttt(),
   Adminnotiii()
  ];
  void onitemtapped(int index){
    setState(() {
      selectedindex=index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: abhinavv.elementAt(selectedindex),
        ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF2357D9),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/wallet.png")), label: "Payment"),
          BottomNavigationBarItem(
              icon:  ImageIcon(AssetImage("assets/conversation.png")),
              label: "Notification"),
         
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