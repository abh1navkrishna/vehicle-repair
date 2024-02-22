import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/lib/User/user_mech_details.dart';

class Usermechlist extends StatefulWidget {
  const Usermechlist({super.key});

  @override
  State<Usermechlist> createState() => _UsermechlistState();
}

class _UsermechlistState extends State<Usermechlist> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('mechSignup').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Text('failed');
          }
          final user = snapshot.data?.docs ?? [];
          return ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return User_mechdeatails(
                            id: user[index].id,
                            name: user[index]['Username'],
                            contact: user[index]['Phone'],
                            exp: user[index]['Experience'],
                          );
                        },
                      ));
                    },
                    child: Container(
                      width: 322,
                      height: 122,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5.0,
                                offset: const Offset(0.0, 5.0)),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueGrey[700]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/bussiness-man 1.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(user[index]['Username'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white,
                                  )),
                              Text(
                                  "${user[index]['Experience']} year experience ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white,
                                  )),
                            ],
                          )
                        ],
                      ),
                    )

                    // Container(
                    //   height: 100,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Color.fromARGB(255, 192, 210, 224)),
                    //   child:
                    //   ListTile(
                    //     leading: Column(
                    //       children: [
                    //         Image.asset(
                    //           "Assets/bussiness-man 2.png",
                    //           height: 32,
                    //         ),
                    //         Text(
                    //           '${user[index]['Username']}',
                    //         )
                    //       ],
                    //     ),
                    //     title: Padding(
                    //       padding: const EdgeInsets.only(left: 40),
                    //       child: Text("${user[index]['Experience']}"),
                    //     ),
                    //     subtitle: Padding(
                    //       padding: const EdgeInsets.only(right: 40),
                    //       child: Column(
                    //         children: [
                    //           //Text(user[index]['service']),
                    //           StreamBuilder(
                    //               stream: FirebaseFirestore.instance
                    //                   .collection('Services')
                    //                   .snapshots(),
                    //               builder: (context, snapshot) {
                    //                 if (snapshot.connectionState ==
                    //                     ConnectionState.waiting)
                    //                   return Center(
                    //                       child: CircularProgressIndicator());
                    //                 if (snapshot.hasError) return Text('Failed');
                    //                 final data = snapshot.data?.docs ?? [];
                    //                 return Text('${data[index]['service']}');
                    //               }),
                    //           Container(
                    //             height: 30,
                    //             width: 100,
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(20),
                    //                 color: Colors.green),
                    //             child: Center(
                    //                 child: Text(
                    //               "Available",
                    //               style: TextStyle(color: Colors.white),
                    //             )),
                    //           )
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    ),
              );
            },
            itemCount: user.length,
          );
        });
  }
}
