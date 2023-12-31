import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20status%20reject.dart';
import 'package:vehicle_repair/mech%20status%20completed.dart';

class Acceotorrejecttt extends StatefulWidget {
  const Acceotorrejecttt({super.key});

  @override
  State<Acceotorrejecttt> createState() => _AcceotorrejectttState();
}

class _AcceotorrejectttState extends State<Acceotorrejecttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Row(
              children: [
                InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back_ios)),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
                child: Container(
                  height: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffCFE2FF)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 110),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Problem',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Place',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Date',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Time',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Contact number ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ': Fuel leaking',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  ': Kozhikode beach road',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  ': 12/05/2023',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  ': 10:00 am',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  ': 0000000',
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),

                        SizedBox(height: 50,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Mechstatuscmplttt();
                              },));
                            },
                              child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xff49CD6E)),
                                    child: Center(
                                      child:  Text(
                                    'Accept',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                    ),
                              ),
                            ),

                             InkWell(onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context) {
                                 return Mechstatusrejecttt();
                               },));
                             },
                               child: Container(
                                width: 110,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffCD4949)),
                                    child: Center(
                                      child:  Text(
                                    'Reject',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                    ),
                                                         ),
                             )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: [
                     
                      Image.asset('assets/Ellipse 12 (2).png'),
                      Text(
                        'Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
