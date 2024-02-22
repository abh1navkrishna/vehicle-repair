import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Admin_add.dart';

class Admin_notification extends StatefulWidget {
  const Admin_notification({super.key});

  @override
  State<Admin_notification> createState() => _Admin_notificationState();
}

class _Admin_notificationState extends State<Admin_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[900],
        surfaceTintColor: Colors.blueGrey[900],
        title: Image.asset('assets/Ellipse 1.png'),
      ),
      body: Stack(
        children: [
          FutureBuilder(
              future:
                  FirebaseFirestore.instance.collection('Notifications').get(),
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
                final adminniti = snapshot.data?.docs ?? [];

                return ListView.builder(
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 5.0,
                                    offset: const Offset(0.0, 5.0)),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueGrey[800]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    adminniti[index]['matter'],
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blueGrey[50]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    adminniti[index]['content'],
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.blueGrey[200]),
                                  ),
                                ]),
                          ),
                        ),
                      );
                    }),
                    itemCount: adminniti.length);
              }),
          Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Admin_add_notification();
                    },
                  ));
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5.0,
                            offset: const Offset(0.0, 5.0)),
                      ],
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.blueGrey),
                  child: Icon(
                    Icons.add,
                    color: Colors.blueGrey[900],
                    size: 50,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
