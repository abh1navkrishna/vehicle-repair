import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Mechanicfaileddd extends StatefulWidget {
  const Mechanicfaileddd({super.key});

  @override
  State<Mechanicfaileddd> createState() => _MechanicfailedddState();
}

class _MechanicfailedddState extends State<Mechanicfaileddd> {
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
                'Failed project',
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
      body: ListView(children: [
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
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                    initialRating: 4,
                    itemCount: 5,
                    itemSize: 30,
                    direction: Axis.horizontal,
                    itemBuilder: (Context, _) =>
                        Icon(Icons.star, color: Colors.amber),
                    onRatingUpdate: (rating) {}),
                SizedBox(
                  width: 10,
                ),
                ImageIcon(AssetImage('assets/edit-text 1.png'))
              ],
            ),
          ],
        ),

        //==============================================================================================================================
   
   
 Padding(
            padding: const EdgeInsets.only(left: 45, top: 40),
            child: Text(
              'Amount',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

//==============================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 43,right: 43,top: 10),
            child: Container(
              height: 146,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12)),
                    child:  Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Failed  reason show',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),

           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff2357D9)),
                child: Center(
                  child: Text(
                    'OK',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          )

   
      ]),
    );
  }
}
