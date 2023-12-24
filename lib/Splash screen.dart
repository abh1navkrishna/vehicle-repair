import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vehicle_repair/user%20or%20mech%20page.dart';

class Splashhh extends StatefulWidget {
  const Splashhh({super.key});

  @override
  State<Splashhh> createState() => _SplashhhState();
}

class _SplashhhState extends State<Splashhh> {
   void initState() {
      super.initState();

      Timer(Duration(seconds: 2), () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return Usermechpageee();
          },
        ));
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Center(child: Image.asset('assets/tow 1.png')),
    );
  }
}
