import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Userprofileee extends StatefulWidget {
  const Userprofileee({super.key});

  @override
  State<Userprofileee> createState() => _UserprofileeeState();
}

class _UserprofileeeState extends State<Userprofileee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
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
        SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Ellipse 1 (1).png'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Colors.black),
            ),
          ],
        ),

        //===========================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 51, top: 50),
          child: Text(
            'Enter your name',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
        //===========================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 51, top: 13),
          child: Text(
            'Enter you phone number ',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Phone number',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),

        //===========================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 51, top: 13),
          child: Text(
            'Enter your email',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 51, right: 51, top: 5),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffCFE2FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter email',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 95,right: 95),
            child: Container(
                  height: 50,
                  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Color(0xfff2357D9)),
              child: Center(
                child: 
                 Text(
              'Done',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: Colors.white),
            ),
              ),
                ),
          )),
    );
  }
}
