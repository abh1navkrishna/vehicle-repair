import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Userratinggg extends StatefulWidget {
  const Userratinggg({super.key});

  @override
  State<Userratinggg> createState() => _UserratingggState();
}

class _UserratingggState extends State<Userratinggg> {
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
                'Your rating',
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
                height: 10,
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
                RatingBar.builder(
                                  initialRating: 4,
                                  itemCount: 5,
                                  itemSize: 30,
                                  direction: Axis.horizontal,
                                  itemBuilder: (Context, _) => Icon(Icons.star,color: Colors.amber),
                                  onRatingUpdate: (rating) {

                                  }),

            ],
          ),

          //==============================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 45, top: 30),
            child: Text(
              'Add rating',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingBar.builder(
                  initialRating: 0,
                  itemCount: 5,
                  itemSize: 50,
                  direction: Axis.horizontal,
                  itemBuilder: (Context, _) => ImageIcon(
                      AssetImage(
                        'assets/star (1) 5.png',
                      ),
                      color: Colors.amber),
                  onRatingUpdate: (rating) {}),
            ],
          ),
          SizedBox(
            height: 100,
          ),

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
                    'Submit ',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
