import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Usermechaniclll extends StatefulWidget {
  const Usermechaniclll({super.key});

  @override
  State<Usermechaniclll> createState() => _UsermechaniclllState();
}

class _UsermechaniclllState extends State<Usermechaniclll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 34.5, right: 34.5, top: 20),
            child: Container(
              height: 122.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffCFE2FF)),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Image.asset('assets/bussiness-man 1.png'),
                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '2+ year experience ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Fuel leaking ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Container(
                        width: 90,
                        height: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xff49CD6E)),
                            child: Center(
                              child:  Text(
                      'Available',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white
                      ),
                    ),
                            ),)
                            
                  ],
                ),
                SizedBox(width: 90,)
              ]),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
