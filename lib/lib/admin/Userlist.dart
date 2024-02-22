import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import 'admin_user.dart';

class Userlist extends StatefulWidget {
  const Userlist({super.key});

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection("userSignup").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error:${snapshot.error}'),
              );
            }
            final user = snapshot.data?.docs ?? [];
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
    onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AdminUserSreen(userid:user[index].id);
          },));
        },
                      child: Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 5.0,
                                  offset: const Offset(0.0, 5.0)),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey[800]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/Rectangle 13.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  user[index]['Username'],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blueGrey[200]),
                                ),
                                Text(
                                  user[index]['Phone'],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey[200]),
                                ),
                                Text(
                                  user[index]['Email'],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blueGrey[200]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                  //   Padding(
                  //   padding: const EdgeInsets.only(top: 10),
                  //   child:
                  //
                  //   ListTile(
                  //     tileColor: Colors.white,
                  //     leading: InkWell(onTap: () {
                  //       Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //         return AdminUserSreen(userid:user[index].id);
                  //       },));
                  //     },
                  //       child: Container(height: 80,width: 100,
                  //           child: Image.asset("Assets/Rectangle 13.png",)),
                  //     ),
                  //     title:Text( user[index]['Username']),
                  //     subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                  //       children: [
                  //
                  //       Text ( user[index]['Phone']),
                  //       Text ( user[index]['Email'],)
                  //       ],
                  //     ),
                  //   ),
                  // );
                });
          }),
    );
  }
}
