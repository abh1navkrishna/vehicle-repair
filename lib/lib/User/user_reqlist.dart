import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserMechreq extends StatefulWidget {
  const UserMechreq({super.key});

  @override
  State<UserMechreq> createState() => _UserMechreqState();
}

class _UserMechreqState extends State<UserMechreq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection('Userreq').get(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }
            final userreq = snapshot.data?.docs ?? [];
            return ListView.builder(
              itemCount: userreq.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Expanded(
                    child: Container(
                      width: 322,
                     
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5.0,
                                offset: const Offset(0.0, 5.0)),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey[700]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userreq[index]['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                )),
                            Text("Service  :  ${userreq[index]['service']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white,
                                )),
                            Text("Place     :  ${userreq[index]['place']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  userreq[index]['date'],
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.blueGrey[200]),
                                ),
                                Text(
                                  userreq[index]['Time'],
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.blueGrey[200]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
