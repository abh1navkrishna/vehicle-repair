import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Admin_add_notification extends StatefulWidget {
  const Admin_add_notification({super.key});

  @override
  State<Admin_add_notification> createState() => _Admin_add_notificationState();
}

class _Admin_add_notificationState extends State<Admin_add_notification> {
  var entermatter = TextEditingController();
  var entercontent = TextEditingController();
  final date = new DateTime.now();
  TimeOfDay time = TimeOfDay.now();

  Future<dynamic> addnotification() async {
    await FirebaseFirestore.instance.collection('Notifications').add({
      "matter": entermatter.text,
      "content": entercontent.text,
      'Time': time.format(context),
      'date': DateFormat('dd/MM/yyyy').format(date),
    });
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    //   return Adminavigationnn(index:2);
    // },));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        surfaceTintColor: Colors.blueGrey[900],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.blueGrey[200],
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Enter Matter',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.blueGrey[200]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5.0,
                        offset: const Offset(0.0, 5.0)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(

                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: entermatter,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: 'Matter',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueGrey[200]),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          //=======================================================================================================================================================
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Enter Content',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.blueGrey[200]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              height: 380,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 5.0,
                        offset: const Offset(0.0, 5.0)),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: entercontent,
                  decoration: InputDecoration(
                      hintText: '    ',
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff7D7D7D)),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),

          //=======================================================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (entermatter.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter Matter",style: TextStyle(color: Colors.red),),
                        backgroundColor: Colors.black,
                        behavior: SnackBarBehavior.floating,
                      ));
                    } else if (entercontent.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Enter Content",style: TextStyle(color: Colors.red),),
                        backgroundColor: Colors.black,
                        behavior: SnackBarBehavior.floating,
                      ));
                    } else {
                      _showAlertDialog();
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5.0,
                              offset: const Offset(0.0, 5.0)),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey[700]),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.blueGrey[200]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showAlertDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.blueGrey[200],
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueGrey)),
              shadowColor: Colors.blueGrey,
              title: Column(
                children: [
                  Icon(
                    Icons.notification_important_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Sent notification',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400,color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.bold,color: Colors.blueGrey[700]),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          addnotification();
                          // Fluttertoast.showToast(
                          //     msg: "Notification sent successfully",
                          //     toastLength: Toast.LENGTH_SHORT,
                          //     gravity: ToastGravity.CENTER,
                          //     timeInSecForIosWeb: 1,
                          //     backgroundColor: Colors.red,
                          //     textColor: Colors.white,
                          //     fontSize: 16.0);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Ok',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[700]),
                        ),
                      ),
                    ],
                  )
                ],
              ));
        });
  }
}
