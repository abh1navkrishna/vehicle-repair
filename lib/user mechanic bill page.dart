import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Usermechanicbillll extends StatefulWidget {
  const Usermechanicbillll({super.key});

  @override
  State<Usermechanicbillll> createState() => _UsermechanicbillllState();
}

class _UsermechanicbillllState extends State<Usermechanicbillll> {
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
                      SizedBox(width: 10,),
                      ImageIcon(AssetImage('assets/edit-text 1.png'))
                ],
              ),
            ],
          ),

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

SizedBox(height: 70,),
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
                    'Payment',
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
