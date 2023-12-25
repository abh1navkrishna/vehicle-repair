import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20botton%20navigation%20bar.dart';
import 'package:vehicle_repair/Mech%20sign%20up.dart';

class Mechloginnn extends StatefulWidget {
  const Mechloginnn({super.key});

  @override
  State<Mechloginnn> createState() => _MechloginnnState();
}

class _MechloginnnState extends State<Mechloginnn> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: Form(
        key: _formfield,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/tow 1.png'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '    Username',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Username";
                    }
                  },
                ),
              ),
            ),

            //============================================================================================================================================

            Padding(
              padding: const EdgeInsets.only(left: 51, top: 30),
              child: Text(
                'Enter Password',
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
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: TextFormField(
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      hintText: '    Enter Password',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none,
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
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Entee Password";
                    } else if (passController.text.length < 6) {
                      return "Password Length Should not be more than 6 characters";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 51, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Forgot password ? ',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(onTap: () {
                    if (_formfield.currentState!.validate()) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return Mechnavigationbarrr();
                      },));
                      emailController.clear();
                      passController.clear();
                    }

                  },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff2357D9)),
                      child: Center(
                        child: Text(
                          'LOGIN',
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
SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you have account ? ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.black),
                ),
                 InkWell(onTap: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                     return Mechsignuppp();
                   },));
                 },
                   child: Text(
                    'Sign up',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xff2357D9)),
                                 ),
                 ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
