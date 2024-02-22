import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/firebase%20dataview.dart';
import 'package:vehicle_repair/lib/admin/Admin_login.dart';

class Firebaseee extends StatefulWidget {
  const Firebaseee({super.key});

  @override
  State<Firebaseee> createState() => _FirebaseeeState();
}

class _FirebaseeeState extends State<Firebaseee> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();

  void uploaddata() {
    FirebaseFirestore.instance
        .collection('users')
        .add({'text1': text1.text, 'text2': text2.text, 'text3': text3.text}).then((value){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Adminlogin();
          },));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: text1,
                  decoration: InputDecoration(
                      hintText: 'Text 1',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          //============================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: text2,
                  decoration: InputDecoration(
                      hintText: 'Text 2',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          //============================================================================================================================================
          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51, top: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: text3,
                  decoration: InputDecoration(
                      hintText: 'Text 3',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          //============================================================================================================================================

          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff2357D9)),
                child: Center(
                  child: Text(
                    'Submit',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(onPressed: () async{
            await FirebaseFirestore.instance.collection('users').get().then((snapshot){
              List <QueryDocumentSnapshot> doclist=snapshot.docs;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Dataviewww(docs:doclist);
              },));
            });
          }, child: Text("View"))
        ],
      ),
    );
  }
}
