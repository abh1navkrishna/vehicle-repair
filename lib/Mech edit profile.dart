import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20profile.dart';

class Mecheditprofileee extends StatefulWidget {
  const Mecheditprofileee({super.key});

  @override
  State<Mecheditprofileee> createState() => _MecheditprofileeeState();
}

class _MecheditprofileeeState extends State<Mecheditprofileee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 5, bottom: 5, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_ios)),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Mechprofileee();
                  },));
                },
                  child: Image.asset('assets/edit 1.png'))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Ellipse 4.png'),
            ],
          ),

          //=======================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 25),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'Name',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================
        
         Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'User name ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================

 Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'Phone number   ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================
 Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'Email  ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================
 Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'experience  ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================
 Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'Location',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================

Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 11),
                child: Text(
                  'Shop name ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
            ),
          ),

          //=======================================================================================================================

        
        Padding(
          padding: const EdgeInsets.only(left: 100,right: 100,top: 30,bottom: 70),
          child: InkWell(onTap: () {
            Navigator.pop(context);
          },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2357D9)),
                  child: Center(
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
            ),
          ),
        )

        ],
      ),
    );
  }
}
