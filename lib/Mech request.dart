import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20service.dart';
import 'package:vehicle_repair/mech%20%20service%20accep%20or%20reject%20t%20page%20.dart';

class Mechrequesttt extends StatefulWidget {
  const Mechrequesttt({super.key});

  @override
  State<Mechrequesttt> createState() => _MechrequestttState();
}

class _MechrequestttState extends State<Mechrequesttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 34,right: 34,top: 20),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Acceotorrejecttt();
                },));
              },
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffCFE2FF)),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          )
                        ],
                      ),
                ),
              ),
            );
          },
          itemCount: 3),
    );
  }
}
