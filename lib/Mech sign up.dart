import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20botton%20navigation%20bar.dart';
import 'package:vehicle_repair/User%20mechanic%20list.dart';

class Mechsignuppp extends StatefulWidget {
  const Mechsignuppp({super.key});

  @override
  State<Mechsignuppp> createState() => _MechsignupppState();
}

class _MechsignupppState extends State<Mechsignuppp> {
  var username = TextEditingController();
  var mobilenumber = TextEditingController();
  var service = TextEditingController();

  Future<dynamic> signup() async {
    await FirebaseFirestore.instance.collection('Mech signup').add({
      "Username": username.text,
      "Mobilenumber": mobilenumber.text,
      "Service": service.text
    }).then((value) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return UserMechaniclisttt();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 5,
            ),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/tow 1.png'),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 23,
                      color: Colors.black),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, top: 30),
            child: Text(
              'Enter Username',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                    hintText: '    Username',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //============================================================================================================================================
          Padding(
            padding: const EdgeInsets.only(left: 51, top: 10),
            child: Text(
              'Enter phone number',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                controller: mobilenumber,
                decoration: InputDecoration(
                    hintText: '    Phone number',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //============================================================================================================================================
          Padding(
            padding: const EdgeInsets.only(left: 51, top: 10),
            child: Text(
              'Enter you email',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '    Enter email',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //============================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 51, top: 10),
            child: Text(
              'Enter youe work experience',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '    Enter your experience',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //============================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 51, top: 10),
            child: Text(
              'Enter your work shop name  ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                controller: service,
                decoration: InputDecoration(
                    hintText: '    Enter your shop name',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //============================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 51, top: 10),
            child: Text(
              'Enter your password ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '    Enter your password ',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //============================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    signup();
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff2357D9)),
                    child: Center(
                      child: Text(
                        'SIGN UP',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
