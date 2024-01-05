import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/User%20mechanic%20l.dart';
import 'package:vehicle_repair/User%20mechanic%20list.dart';

class Usersignuppp extends StatefulWidget {
  const Usersignuppp({super.key});

  @override
  State<Usersignuppp> createState() => _UsersignupppState();
}

class _UsersignupppState extends State<Usersignuppp> {
  var Username = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  var email = TextEditingController();
  Future<dynamic> sign() async {
    await FirebaseFirestore.instance.collection('usersignup').add({
      "usernamr": Username.text,
      "phone number": phone.text,
      "Email": email.text,
      "password": password.text,
      "status":0,
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
                Icon(Icons.arrow_back_ios),
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
                controller: Username,
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
                controller: phone,
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
                controller: email,
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
                controller: password,
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
                    sign();
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
