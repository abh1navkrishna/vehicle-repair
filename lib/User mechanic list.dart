import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20accepted.dart';
import 'package:vehicle_repair/Mech%20request.dart';
import 'package:vehicle_repair/User%20mechanic%20l.dart';
import 'package:vehicle_repair/User%20request%20list.dart';

class UserMechaniclisttt extends StatefulWidget {
  const UserMechaniclisttt({super.key});

  @override
  State<UserMechaniclisttt> createState() => _UserMechaniclistttState();
}

class _UserMechaniclistttState extends State<UserMechaniclisttt> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xffCFE2FF),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/Ellipse 1.png'),
                  Container(
                    width: 211,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff7D7D7D),
                          ),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff7D7D7D)),
                          border: InputBorder.none),
                    ),
                  ),
                  Image.asset('assets/notification 1.png')
                ],
              )),
          body: SafeArea(
              child: Column(
            children: [
              Expanded(
                  child: TabBarView(children: [
                Usermechaniclll(),
                Userrequestlisttt(),
              ]))
            ],
          )),
          bottomNavigationBar: BottomAppBar(
            surfaceTintColor: Colors.white,
            child: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Mechanic',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Request',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff2357D9),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xff150B3D),
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
        ));
  }
}
