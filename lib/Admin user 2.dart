import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adminuser222 extends StatefulWidget {
  Adminuser222({super.key, required this.id});
  final id;

  @override
  State<Adminuser222> createState() => _Adminuser222State();
}

class _Adminuser222State extends State<Adminuser222> {
  DocumentSnapshot? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
              future: getDtata(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  return Text("Error${snapshot.error}");
                }

                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios)),
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
                    SizedBox(
                      height: 10,
                    ),
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

                    SizedBox(
                      height: 30,
                    ),

                    //================================================================================================================================

                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        ' Username',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 5, right: 40),
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

                    SizedBox(
                      height: 30,
                    ),

                    //================================================================================================================================

                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        ' Phone Number',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 5, right: 40),
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
                                hintText: '0000000000',
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

                    SizedBox(
                      height: 30,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        ' email address',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 5, right: 40),
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

                    //=====================================================================================================

                    user!['status']==0
                    ?Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
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
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
                    ):user!['status']==1 
                    ? Container(
                              width: 142,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff73ABFF)),
                              child: Center(
                                child: Text(
                                  'Accepted',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                            ):
                            Container(
                              width: 142,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xffFF9F9D)),
                              child: Center(
                                child: Text(
                                  'Rejected',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                  ],
                );
              })),
    );
  }

  getDtata() async {
    user = await FirebaseFirestore.instance
        .collection('usersignup')
        .doc(widget.id)
        .get();
  }

  void accept(id) {
    setState(() {
      FirebaseFirestore.instance
          .collection('usersignup')
          .doc(id)
          .update({'status': 1});
    });
  }

  void reject(id) {
    setState(() {
      FirebaseFirestore.instance
          .collection('usersignup')
          .doc(id)
          .update({'status': 2});
    });
  }
}
