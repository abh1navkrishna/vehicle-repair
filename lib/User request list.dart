import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Userrequestlisttt extends StatefulWidget {
  const Userrequestlisttt({super.key});

  @override
  State<Userrequestlisttt> createState() => _UserrequestlistttState();
}

class _UserrequestlistttState extends State<Userrequestlisttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 34.5, right: 34.5, top: 20),
            child: Container(
              height: 122.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffCFE2FF)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Name',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Date',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Time',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Fuel leaking',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 110,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff49CD6E)),
                  child: Center(
                    child: Text(
                      'Approved',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                )
              ]),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
