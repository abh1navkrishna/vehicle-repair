import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/lib/admin/home2.dart';
import 'package:vehicle_repair/lib/admin/homepage.dart';


class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  final _formfield = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
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
                        color: Colors.blueGrey[200]),
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
                    color: Colors.blueGrey[200]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 51, top: 10),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    filled: true,
                    hintText: 'Username',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.blueGrey[200]),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    border: const OutlineInputBorder()),
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter Username";
                  }else if(usernameController.text!='abhi'){
                    return "Username don't match";
                  }
                },
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
                    color: Colors.blueGrey[200]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 51, right: 51, top: 10),
              child: TextFormField(
                controller: passController,
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
                    EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    border: const OutlineInputBorder()),
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter Password";
                  }else if(passController.text!='admin123'){
                    return "Password don't match";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if(_formfield.currentState!.validate()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
                      }
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5.0,
                                offset: const Offset(0.0, 5.0)),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey[800]),
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.blueGrey[400]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
