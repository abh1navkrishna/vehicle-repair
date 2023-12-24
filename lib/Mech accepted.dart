import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mechaccepteddd extends StatefulWidget {
  const Mechaccepteddd({super.key});

  @override
  State<Mechaccepteddd> createState() => _MechacceptedddState();
}

class _MechacceptedddState extends State<Mechaccepteddd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return  Padding(
              padding: const EdgeInsets.only(left: 34,right: 34,top: 20),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffCFE2FF)),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Ellipse 11.png'),
                        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                        'Fuel leaking ',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        'Date',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        'Time',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black
                        ),
                      ),
                      Text(
                        'Place',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black
                        ),
                      ),
                          ],
                        ),
                        Container(width: 130,height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),color: Color(0xffCD4949)),
                        child: Center(
                          child: Text(
                          'Payment pending ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white
                          ),
                                              ),
                        ),
                        )
                      ],
                    ),
              ),
            );
      },
      itemCount: 3,)
    );
  }
}