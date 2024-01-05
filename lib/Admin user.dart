import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Admin%20user%202.dart';

class Adminuserrr extends StatefulWidget {
  const Adminuserrr({super.key});

  @override
  State<Adminuserrr> createState() => _AdminuserrrState();
}

class _AdminuserrrState extends State<Adminuserrr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      body: FutureBuilder(
          future: FirebaseFirestore.instance.collection("usersignup").get(),
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
            final user = snapshot.data?.docs ?? [];

            return ListView.builder(
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Adminuser222(id: user[index]['usernamr'],);
                        },
                      ));
                    },
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
                                  user[index]['usernamr']
                                   
      
                                    ),
                                Text(
                                   user[index]['password']
                                ),
                                Text(
                                  user[index]['phone number']
                                ),
                                Text(
                                   user[index]['Email']
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
              itemCount: user.length,
            );
          }),
    );
  }
}
