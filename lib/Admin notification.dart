import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminnotiii extends StatefulWidget {
  const Adminnotiii({super.key});

  @override
  State<Adminnotiii> createState() => _AdminnotiiiState();
}

class _AdminnotiiiState extends State<Adminnotiii> {
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
              height: 110,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    'Heading',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5,),
                   Text(
                    'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying  . . . . .  ',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
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
