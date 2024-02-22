import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminUserSreen extends StatefulWidget {
  const AdminUserSreen({super.key, required this.userid});
  final userid;

  @override
  State<AdminUserSreen> createState() => _AdminUserSreenState();
}

class _AdminUserSreenState extends State<AdminUserSreen> {
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
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("userSignup")
              .doc(widget.userid)
              .snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
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

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 51),
              child: ListView(children: [
                CircleAvatar(
                  backgroundColor: null,
                  child:
                      Image.asset('assets/Rectangle 14.png', fit: BoxFit.fill),
                  radius: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    snapshot.data!['Username'],
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.blueGrey[200]),
                  ),
                ),
                // Text(snapshot.data!['Location'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Username",
                  style: GoogleFonts.poppins(
                    color: Colors.blueGrey[200],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 330,
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
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      readOnly: true,
                      controller: TextEditingController(
                          text: snapshot.data!['Username']),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Phone number",
                  style: GoogleFonts.poppins(
                    color: Colors.blueGrey[200],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 330,
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
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      readOnly: true,
                      controller:
                          TextEditingController(text: snapshot.data!['Phone']),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "E-mail",
                  style: GoogleFonts.poppins(
                    color: Colors.blueGrey[200],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 330,
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
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      readOnly: true,
                      controller:
                          TextEditingController(text: snapshot.data!['Email']),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 100,
                ),
                snapshot.data?['status'] == 0
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                accept();
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 5.0,
                                        offset: const Offset(0.0, 5.0)),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey[800]),
                              child: Center(
                                  child: Text(
                                "Accept",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.blueGrey[200]),
                              )),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                reject();
                              });
                            },
                            child: Container(
                              height: 50,
                              width: 130,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 5.0,
                                        offset: const Offset(0.0, 5.0)),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey[200]),
                              child: Center(
                                  child: Text(
                                "reject",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.blueGrey[900]),
                              )),
                            ),
                          )
                        ],
                      )
                    : snapshot.data!['status'] == 1
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.green),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 5.0,
                                        offset: const Offset(0.0, 5.0)),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey[800]),
                              child: Center(
                                  child: Text(
                                "Accepted",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.green),
                              )),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.red),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 5.0,
                                        offset: const Offset(0.0, 5.0)),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blueGrey[800]),
                              child: Center(
                                  child: Text(
                                "rejected",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red),
                              )),
                            ),
                          )
              ]),
            );
          }),
    );
  }

  accept() async {
    await FirebaseFirestore.instance
        .collection("userSignup")
        .doc(widget.userid)
        .update({'status': 1});
  }

  reject() async {
    await FirebaseFirestore.instance
        .collection('userSignup')
        .doc(widget.userid)
        .update({'status': 2});
  }
}
