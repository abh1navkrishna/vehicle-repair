import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'mech_home.dart';
import 'mechsignup.dart';

class Mechlogin extends StatefulWidget {
  const Mechlogin({super.key});

  @override
  State<Mechlogin> createState() => _MechloginState();
}

class _MechloginState extends State<Mechlogin> {

  bool passToggle = true;

  var Username = TextEditingController();
  var Password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String id = '';
  String name = '';
  String email = '';
  String phone = '';
  String pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blueGrey[200],
              ),
            )),
        body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/tow 1.png', fit: BoxFit.fill),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text('LOGIN',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 23,
                          color: Colors.blueGrey[200])),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Enter Username",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blueGrey[200])),
                ),
                SizedBox(height: 5,),
                TextFormField(
                  controller: Username,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey,
                      border: InputBorder.none,
                      hintText: 'Username',
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.blueGrey[200]),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Enter Password",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.blueGrey[200])),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: Password,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      fillColor: Colors.blueGrey,
                      filled: true,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.blueGrey[200]),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: const OutlineInputBorder()),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text("Forgot password ? ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.blueGrey[200])),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Mechlogin();
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: const Offset(0.0, 5.0)),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey[700]),
                    child: Center(
                      child: Text("LOGIN",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.blueGrey[200])),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have account ? ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.blueGrey[200])),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Mech_Signup();
                          },
                        ));
                      },
                      child:  Text("Sign up",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.blueGrey[100])),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  void Mechlogin() async {
    final user = await FirebaseFirestore.instance
        .collection('mechSignup')
        .where('Username', isEqualTo: Username.text)
        .where('Password', isEqualTo: Password.text)
        .where('status', isEqualTo: 1)
        .get();

    if (user.docs.isNotEmpty) {
      id = user.docs[0].id;
      name = user.docs[0]['Username'];
      email = user.docs[0]['Email'];
      phone = user.docs[0]['Phone'];
      pass = user.docs[0]['Password'];

      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString('id', id);
      data.setString('name', name);
      data.setString('email', email);
      data.setString('phone', phone);

      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Mech_home();
        },
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          'Username and password error',
          style: TextStyle(color: Colors.red),
        ),
      ));
    }
  }
}
