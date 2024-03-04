import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/lib/User/User%20notification.dart';
import 'package:vehicle_repair/lib/User/user_reqlist.dart';
import 'package:vehicle_repair/lib/User/usermechlist.dart';

import '../admin/notification.dart';
import 'Userprofile.dart';

class Usermechreq extends StatefulWidget {
  const Usermechreq({super.key});

  @override
  State<Usermechreq> createState() => _UsermechreqState();
}

class _UsermechreqState extends State<Usermechreq> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          surfaceTintColor: Colors.blueGrey[900],
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Userprofile(),
                        ));
                  },
                  child: CircleAvatar(
                    child: Image.asset('assets/Ellipse 1.png'),
                    radius: 25,
                  )),
              Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 5.0,
                          offset: const Offset(0.0, 5.0)),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey[700]),
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey,
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Usernotification(),));
              }, icon: Icon(
                Icons.notifications_none,
                color: Colors.blueGrey[200],
                size: 30,
              ))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Expanded(
                  child: TabBarView(children: [
                Usermechlist(),
                    UserMechreq(),
              ])),
              Center(
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey[200]),
                  child: TabBar(
                    tabs: [
                      Tab(
                        child: Text("Mechanic",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            )),
                      ),
                      Tab(
                        child: Text("Request",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            )),
                      ),
                    ],
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blueGrey),
                    dividerColor: Colors.transparent,
                    labelColor: Colors.blueGrey[200],
                    unselectedLabelColor: Colors.blueGrey,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
