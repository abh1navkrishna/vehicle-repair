import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Admin%20login.dart';
import 'package:vehicle_repair/Mech%20login.dart';
import 'package:vehicle_repair/User%20login.dart';

class Usermechpageee extends StatefulWidget {
  const Usermechpageee({super.key});

  @override
  State<Usermechpageee> createState() => _UsermechpageeeState();
}

class _UsermechpageeeState extends State<Usermechpageee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 5, bottom: 20),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/tow 1.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Text(
              ' who you  are ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Mechloginnn();
              },));
            },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff2357D9)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 13),
                  child: Text(
                    'Mechanic',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Userloginnn();
              },));
            },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 13),
                  child: Text(
                    'User',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Adminloginnn();
                },));
              },
                child: Text(
                  'Admin Login',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Color(0xff2357D9)),
                ),
              ),
            ],
          ),

Padding(
  padding: const EdgeInsets.only(left: 95,right: 95,top: 100),
  child:   Container(height: 50,decoration: BoxDecoration(
  
                    borderRadius: BorderRadius.circular(10),
  
                    color: Color(0xff2357D9)),
                    child: Center(
                      child:  Text(
                'CONTINUE',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,)
              ),
                    ),),
)

        ],
      ),
    );
  }
}
