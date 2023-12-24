import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Userpaypageee extends StatefulWidget {
  const Userpaypageee({super.key});

  @override
  State<Userpaypageee> createState() => _UserpaypageeeState();
}

class _UserpaypageeeState extends State<Userpaypageee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                 Image.asset('assets/check 1.png'),
                 SizedBox(height: 20,),
                  Text(
                    'Successful',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff2357D9),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  'Back to home page ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            )
        ],
      ),
          )),
    );
  }
}
