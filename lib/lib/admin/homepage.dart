import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vehicle_repair/lib/admin/payment.dart';

import 'Userlist.dart';
import 'home2.dart';
import 'mechaniclist.dart';
import 'notification.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int indexNum = 0;
  List page = [Home2(), Payment(), Admin_notification()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNum,
        selectedIconTheme: IconThemeData(
          color: Colors.blueGrey[200],
        ),
        backgroundColor: Colors.blueGrey[900],
        onTap: (int Index) {
          setState(() {
            indexNum = Index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',activeIcon: Icon(Icons.home,size: 40,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.payments), label: 'Payments',activeIcon: Icon(Icons.payment,size: 40,),),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_sharp), label: 'Notifications',activeIcon: Icon(Icons.message,size: 40,)),
        ],
      ),
      body: page[indexNum],
    );
  }
}
