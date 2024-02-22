import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/lib/User/user_mech_request_list.dart';

class User_mechdeatails extends StatefulWidget {
  String? name;
  String? contact;
  String? exp;

  var id;

  User_mechdeatails({
    super.key,
    required this.name,
    required this.contact,
    required this.exp,
    required this.id,
  });

  @override
  State<User_mechdeatails> createState() => _User_mechdeatailsState();
}

class _User_mechdeatailsState extends State<User_mechdeatails> {
  var selecteditem;
  var place = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[900],
        surfaceTintColor: Colors.blueGrey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blueGrey[200],
              ),
            ),
            Text('Needed service ',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.blueGrey[200])),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Center(
        child: StreamBuilder(
            stream:
                FirebaseFirestore.instance.collection('mechSignup').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return CircularProgressIndicator();
              if (snapshot.hasError) return Text('Failed');

              return ListView(
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Image.asset('assets/bussiness-man 1.png',
                        fit: BoxFit.fill),
                  ),
                  Column(
                    children: [
                      Text('${widget.name}',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white)),
                      SizedBox(height: 5,),
                      Text('${widget.exp} year experience',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.blueGrey[200])),
                      Text('${widget.contact}',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.blueGrey[200])),
                    ],
                  ),
                  // Text(
                  //   '${widget.name} ',
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 14,
                  //       fontFamily: 'Poppins',
                  //       fontWeight: FontWeight.w400,
                  //       height: 2),
                  // ),
                  // SizedBox(
                  //   width: 134,
                  //   height: 21.28,
                  //   child: Text(
                  //     '${widget.exp} ',
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontSize: 14,
                  //         fontFamily: 'Poppins',
                  //         fontWeight: FontWeight.w400,
                  //         height: 2),
                  //   ),
                  // ),
                  // Text(
                  //   '${widget.contact} ',
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 14,
                  //       fontFamily: 'Poppins',
                  //       fontWeight: FontWeight.w400,
                  //       height: 2),
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  // Container(
                  //   height: 30,
                  //   width: 100,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20),
                  //       color: Colors.green),
                  //   child: Center(
                  //       child: Text(
                  //     "Available",
                  //     style: TextStyle(color: Colors.white),
                  //   )),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, top: 30),
                    child: Text(
                      "Add needed service                    ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 60),
                    child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFE8F1FF),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 5),
                            ]),
                        child: StreamBuilder<QuerySnapshot>(
                          stream: FirebaseFirestore.instance
                              .collection('Services')
                              .snapshots(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              Text("some error");
                            }
                            if (!snapshot.hasData) {
                              return CircularProgressIndicator();
                            } else {
                              print('gftghjklhkhk');
                              List<DropdownMenuItem> Items = [];
                              var users = snapshot.data?.docs.reversed.toList();
                              Set<String> uniqueValues = Set<String>();

                              for (var userss in users!) {
                                String serviceValue = userss['service'];
                                print(
                                    '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$serviceValue');

                                Items.add(DropdownMenuItem(
                                  child: Text(serviceValue),
                                  value: serviceValue,
                                ));
                                uniqueValues.add(serviceValue);
                              }
                              return DropdownButton(
                                items: Items,
                                value: selecteditem,
                                onChanged: (value) {
                                  setState(() {
                                    print(value);
                                    selecteditem = value;
                                  });
                                },
                              );
                            }
                          },
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: Text(
                      "Place",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 10),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE8F1FF),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5),
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: TextFormField(
                          controller: place,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Beach road calicut"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      userequest();
                    },
                    child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 2, 74, 133)),
                      child: Center(
                        child: Text(
                          "Request",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }

  Future<void> userequest() async {
    await FirebaseFirestore.instance.collection('Userreq').add({
      'place': place.text,
      'name': widget.name,
      'contact': widget.contact,
      'exp': widget.exp,
      'service': selecteditem,
      'status': 0
    });
  }
}
