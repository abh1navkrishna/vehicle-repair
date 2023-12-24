import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mechprofileee extends StatefulWidget {
  const Mechprofileee({super.key});

  @override
  State<Mechprofileee> createState() => _MechprofileeeState();
}

class _MechprofileeeState extends State<Mechprofileee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios),
            ],
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Ellipse 4.png'),
          ],
        ),

//=========================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 20),
          child: Text(
            ' Name',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
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

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            '  Username',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            ' Phone number',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
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

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            '  Email',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
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

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            ' Work experience',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your experience',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            '  Work shop name',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your shop name',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 15),
          child: Text(
            '  Your location',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE8F1FF)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your location',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),

//================================================================================================================================

        Padding(
          padding: const EdgeInsets.only(left: 100,right: 100,top: 50,bottom: 100),
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff2357D9)),
                child: Center(
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
          ),
        )
      ]),
    );
  }
}
