import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:vehicle_repair/lib/User/user_mech_request_list.dart';

class User_mechdeatails extends StatefulWidget {
  String? name;
  String? contact;
  String? exp;
  String? selecteditem;


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

  final List<String> items = [
    'Fuel leaking',
    'Battery check',
    'Brake pad replacement',
    'Tyre changing and repair',
  ];
  // String? selectedValue;
  String? selectedvalue;

  final date = new DateTime.now();
  TimeOfDay time = TimeOfDay.now();

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
            Text('Needed service',
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

              return Padding(
                padding: const EdgeInsets.only(left: 45, right: 45, top: 30),
                child: ListView(
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
                    SizedBox(
                      height: 30,
                    ),
                    Text('Add needed service',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.blueGrey[200])),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5.0,
                                offset: const Offset(0.0, 5.0)),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey),
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
                              return DropdownButton<String>(
                                  isExpanded: true,
                                  elevation: 0,
                                  dropdownColor: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10),
                                  hint: Text("services",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.white)),
                                  underline: const SizedBox(),
                                  value: selectedvalue,
                                  items: items.map((String value) {
                                    return DropdownMenuItem<String>(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  onChanged: (newvalue) {
                                    setState(() {
                                      selectedvalue = newvalue;
                                      print(selectedvalue);
                                    });
                                  },
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10));
                            }
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Enter place',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.blueGrey[200])),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
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
                          controller: place,
                          decoration: InputDecoration(
                              hintText: 'Place',
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            userequest();
                          },
                          child: Container(
                            height: 50,
                            width: 212,
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
                              child: Text("Request",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.blueGrey[200])),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
      'service': selectedvalue,
      'status': 0,
      'Time': time.format(context),
      'date': DateFormat('dd/MM/yyyy').format(date),
    });
    Navigator.pop(context);
  }
}
