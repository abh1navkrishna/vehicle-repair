import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Usermechdetailsss extends StatefulWidget {
  const Usermechdetailsss({super.key});

  @override
  State<Usermechdetailsss> createState() => _UsermechdetailsssState();
}

class _UsermechdetailsssState extends State<Usermechdetailsss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffCFE2FF),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Text(
                'Mechanic Bill',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black),
              ),
              SizedBox(
                width: 20,
              )
            ],
          )),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('assets/bussiness-man 2.png'),
              Text(
                'Name',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'contact number ',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '2+ year experience ',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 106,
                height: 28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff49CD6E)),
                child: Center(
                  child: Text(
                    'Available',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          //==============================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 45, top: 20),
            child: Text(
              'Add needed service ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 45, top: 10),
            child: Row(
              children: [
                Container(
                    height: 38,
                    width: 267,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffCFE2FF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Fuel leaking',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ]),
                    )),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 13,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 45, right: 80, top: 10),
            child: Container(
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffCFE2FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Icon(Icons.keyboard_arrow_down),
                  ]),
                )),
          ),

          //==============================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 45, top: 20),
            child: Text(
              'Place',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, top: 10),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffCFE2FF),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  'Beach road Calicut ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 212,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff2357D9)),
                    child: Center(child: 
                    Text(
                  'Request',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white),
                ),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
