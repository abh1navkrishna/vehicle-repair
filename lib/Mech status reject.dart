import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20botton%20navigation%20bar.dart';

class Mechstatusrejecttt extends StatefulWidget {
  const Mechstatusrejecttt({super.key});

  @override
  State<Mechstatusrejecttt> createState() => _MechstatusrejectttState();
}

class _MechstatusrejectttState extends State<Mechstatusrejecttt> {
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
                InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_ios)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, top: 20),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffCFE2FF)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Ellipse 11.png'),
                       Text(
                        'Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Fuel leaking ',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        'Date',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        'Time',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        'Place',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 100),
            child: Text(
              'Add status',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),  SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.circle_outlined,color: Color(0xff2357D9),),
                     Text(
                '  Completed',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black),
              ),
                  ],
                ),
                 Row(
                  children: [
                    Icon(Icons.radio_button_on,color: Color(0xff2357D9),),
                     Text(
                '  Not Completed',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black),
              ),
                  ],
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 40, top: 40),
            child: Text(
              'Reject reason',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42.5, right: 42.5, top: 20),
            child: Container(
              height: 146,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
             
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:71,right: 71,top: 20),
            child: InkWell(onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                return Mechnavigationbarrr();
              },));
            },
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff2357D9)),
                    child: Center(
                      child:  Text(
                      'Submit ',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    ),
              ),
            ),
          )
      ]),
    );
  }
}