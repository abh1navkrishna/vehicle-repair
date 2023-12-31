import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20botton%20navigation%20bar.dart';
import 'package:vehicle_repair/Mech%20home%20tabbar.dart';

class Mechstatuscmplttt extends StatefulWidget {
  const Mechstatuscmplttt({super.key});

  @override
  State<Mechstatuscmplttt> createState() => _MechstatuscmpltttState();
}

class _MechstatuscmpltttState extends State<Mechstatuscmplttt> {
  // String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
          ),
          SizedBox(
            height: 10,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.radio_button_on,color: Color(0xff2357D9),),
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
                    Icon(Icons.circle_outlined,color: Color(0xff2357D9),),
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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Row(
          //       children: [
          //         Radio(
          //           value: 'complet',
          //           groupValue: gender,
          //           onChanged: (value) {
          //             setState(() {
          //               gender = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Completed ',
          //           style: GoogleFonts.poppins(
          //               fontWeight: FontWeight.w400,
          //               fontSize: 14,
          //               color: Colors.black),
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         Radio(
          //           value: 'not',
          //           groupValue: gender,
          //           onChanged: (value) {
          //             setState(() {
          //               gender = value;
          //             });
          //           },
          //         ),
          //         Text(
          //           'Not Completed',
          //           style: GoogleFonts.poppins(
          //               fontWeight: FontWeight.w400,
          //               fontSize: 14,
          //               color: Colors.black),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 40),
            child: Text(
              'Amound',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85.5, right: 85.5, top: 50),
            child: Container(
              height: 43,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.currency_rupee),
                  Text(
                    '  2000/-',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:71,right: 71,top: 50),
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
        ],
      ),
    );
  }
}
