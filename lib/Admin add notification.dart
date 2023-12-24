import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminaddnotiii extends StatefulWidget {
  const Adminaddnotiii({super.key});

  @override
  State<Adminaddnotiii> createState() => _AdminaddnotiiiState();
}

class _AdminaddnotiiiState extends State<Adminaddnotiii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCFE2FF),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Color(0xffCFE2FF),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Enter Matter',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              height: 55,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '    Matter',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff7D7D7D)),
                    border: InputBorder.none),
              ),
            ),
          ),

          //=======================================================================================================================================================
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Enter Content',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
                height: 380,
                color: Colors.white,
                child:TextFormField(
                  decoration: InputDecoration(
                      hintText: '    Content . . . .',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),),
          ),

          //=======================================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
