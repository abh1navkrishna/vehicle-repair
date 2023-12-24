import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminmechanic222 extends StatefulWidget {
  const Adminmechanic222({super.key});

  @override
  State<Adminmechanic222> createState() => _Adminmechanic222State();
}

class _Adminmechanic222State extends State<Adminmechanic222> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios),
            ],
          ),
        ),
        CircleAvatar(
          radius: 70,
          backgroundColor: Color(0xffE8F1FF),
          child: Image.asset('assets/Rectangle 14.png'),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ],
        ),

SizedBox(height: 20,),

        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            SizedBox(width: 5,),
             Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            SizedBox(width: 5,),
            Icon(
              Icons.star,
              color: Colors.yellow[700],
            ),
            SizedBox(width: 5,),
            Icon(Icons.star_border)
            
          ],
        ),
        SizedBox(height: 7,),

        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Location',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black),
              ),
            ],
          ),

//=========================================================================================================================================

 Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text(
              ' Mech Username',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

//================================================================================================================================


 Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text(
              '  Phone number',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: '000000',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

//================================================================================================================================



 Padding(
            padding: const EdgeInsets.only(left: 40,top: 0),
            child: Text(
              ' email adders',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Example@email.com',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

//================================================================================================================================


 Padding(
            padding: const EdgeInsets.only(left: 40,top: 0),
            child: Text(
              ' work experience  ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'experience',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

//================================================================================================================================


 Padding(
            padding: const EdgeInsets.only(left: 40,top: 0),
            child: Text(
              ' work shop name  ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: ' shop name   ',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

//================================================================================================================================


 Padding(
            padding: const EdgeInsets.only(left: 40,top: 0),
            child: Text(
              '  your location   ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffE8F1FF)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter your location   ',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

//================================================================================================================================


  Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 142,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff73ABFF)),
                  child: Center(
                    child: Text(
                      'Accept',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 142,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffFF9F9D)),
                  child: Center(
                    child: Text(
                      'Reject',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )



      ]),
    );
  }
}
