import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminpaymenttt extends StatefulWidget {
  const Adminpaymenttt({super.key});

  @override
  State<Adminpaymenttt> createState() => _AdminpaymentttState();
}

class _AdminpaymentttState extends State<Adminpaymenttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffE8F1FF),
        title: Image.asset('assets/Ellipse 1.png'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              width: double.infinity,
              height: 120,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      Text(
                        '10/11/2023',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Text(
                        '₹ 5455/-',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black),
                      ),

                        SizedBox(height: 5,),

                  Text(
                        'service',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),

                        SizedBox(height: 5,),

                  Text(
                        'Mechanic Name',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                   
                ]),
              ),
            ),
          );
        }),
        itemCount: 10,
      ),
    );
  }
}