import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminmechaniccc extends StatefulWidget {
  const Adminmechaniccc({super.key});

  @override
  State<Adminmechaniccc> createState() => _AdminmechanicccState();
}

class _AdminmechanicccState extends State<Adminmechaniccc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Image.asset('assets/Rectangle 13.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10,),
                        
                        Text(
                          'Mobile Number',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        Text(
                          'Service',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
        itemCount: 10,
      ),
    );
  }
}
