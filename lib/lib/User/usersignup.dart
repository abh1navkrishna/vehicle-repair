import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'User login.dart';

class Usersignup extends StatefulWidget {
  const Usersignup({super.key});

  @override
  State<Usersignup> createState() => _UsersignupState();
}

class _UsersignupState extends State<Usersignup> {
  var Username = TextEditingController();
  var Phone = TextEditingController();
  var Email = TextEditingController();
  var Password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  bool passToggle = true;

  String imageUrl = '';

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
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 51),
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              SizedBox(
                height: 130,
                width: 130,
                child: Image.asset('assets/tow 1.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('SIGN UP',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 23,
                          color: Colors.blueGrey[200])),
                ),
              ),

              Text("Enter Username",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.blueGrey[200])),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: Username,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    filled: true,
                    hintText: 'Username',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.blueGrey[200]),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username";
                  } else if (Username.text.length <= 5) {
                    return "Username Length Should not be less\nthan 5 characters";
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text("Enter Phone number",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.blueGrey[200])),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: Phone,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    filled: true,
                    hintText: 'Phone number',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.blueGrey[200]),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  }
                  // else if (phone.text.length == 10) {
                  //   return "Enter valied phone number";
                  // }
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text("Enter Email",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.blueGrey[200])),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: Email,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    filled: true,
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.blueGrey[200]),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder()),
                validator: (value) {
                  bool emailvalid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);

                  if (value!.isEmpty) {
                    return "Enter Email";
                  } else if (!emailvalid) {
                    return "Enter Valied Email";
                  }
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text("Enter Password",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.blueGrey[200])),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: Password,
                obscureText: passToggle,
                decoration: InputDecoration(
                    fillColor: Colors.blueGrey,
                    filled: true,
                    hintText: 'Password',
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.blueGrey[200]),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    border: const OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  } else if (Password.text.length < 6) {
                    return "Password Length Should not be less\nthan 6 characters";
                  }
                },
              ),
              // IconButton(
              //     onPressed: () async {
              //       ImagePicker imagepicker = ImagePicker();
              //       XFile? file = await imagepicker.pickImage(
              //           source: ImageSource.camera);
              //       print('${file?.path}');
              //
              //       if (file == null) return;
              //       String uniqueFileName =
              //           DateTime.now().microsecondsSinceEpoch.toString();
              //
              //       Reference referenceRoot =
              //           FirebaseStorage.instance.ref();
              //       Reference referenceDirImages =
              //           referenceRoot.child('images');
              //
              //       Reference referenceImageToUpload =
              //           referenceDirImages.child(uniqueFileName);
              //
              //       try {
              //         await referenceImageToUpload
              //             .putFile(File(file!.path));
              //
              //         imageUrl =
              //             await referenceImageToUpload.getDownloadURL();
              //       } catch (error) {}
              //     },
              //     icon: Icon(Icons.camera_enhance)),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        signUp();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Userlogin(),
                            ));
                        Username.clear();
                        Password.clear();
                        Phone.clear();
                        Email.clear();
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 200,
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
                        child: Text("SIGN UP",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.blueGrey[200])),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  signUp() async {
    await FirebaseFirestore.instance.collection("userSignup").add({
      'Username': Username.text,
      'Phone': Phone.text,
      'Email': Email.text,
      'Password': Password.text,
      'status': 0
    });
  }
}
