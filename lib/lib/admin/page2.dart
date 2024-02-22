import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Mech/mech_login.dart';
import '../User/User login.dart';
import 'Admin_login.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool selectedOption = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Image.asset("assets/tow 1.png"),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                ' who you are ',
                style: TextStyle(
                  color: Colors.blueGrey[200],
                  fontSize: 20,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption == true;
                  });
                },
                child: Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: const Offset(0.0, 5.0)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: selectedOption == true
                          ? Colors.white
                          : Colors.blueGrey),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Mechanic",
                      style: TextStyle(
                          color: selectedOption == true
                              ? Colors.blueGrey
                              : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedOption = false;
                  });
                },
                child: Container(
                  height: 60,
                  width: 320,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: const Offset(0.0, 5.0)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: selectedOption == false
                          ? Colors.white
                          : Colors.blueGrey),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "User",
                      style: TextStyle(
                          color: selectedOption == false
                              ? Colors.blueGrey
                              : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Adminlogin();
                      },
                    ));
                  },
                  child: Text(
                    "Admin Login",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blueGrey[200]),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => selectedOption == true
                              ? Mechlogin()
                              : Userlogin(),
                        ));
                  },
                  child: Container(
                    height: 60,
                    width: 180,
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
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
