import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mechaniclist.dart';
import 'Userlist.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blueGrey[900],
            surfaceTintColor: Colors.blueGrey[900],
            title: Image.asset(
              "assets/Ellipse 1.png",
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          child: Text("User",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ),
                        Tab(
                          child: Text("Mechanic",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 18)),
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
                const Expanded(
                    child: TabBarView(children: [Userlist(), Mechaniclist()]))
              ],
            ),
          ),
        ));
  }
}
