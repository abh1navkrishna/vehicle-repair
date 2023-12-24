import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Mech%20accepted.dart';
import 'package:vehicle_repair/Mech%20request.dart';

class Mechtabbarrr extends StatefulWidget {
  const Mechtabbarrr({super.key});

  @override
  State<Mechtabbarrr> createState() => _MechtabbarrrState();
}

class _MechtabbarrrState extends State<Mechtabbarrr> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 5),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/Ellipse 9.png'),
                Image.asset('assets/notification 1.png')
              ],
            ),
          ),

//================================================================================================================================

   Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,top: 30,bottom: 30),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffE8F1FF),),
                  child: TabBar(
                    
                    tabs: [
                      Tab(
                        child: Text(
                          'Requests',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Accepted',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      
                    ],
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffCFE2FF),
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Color(0xff150B3D),
                    indicatorSize: TabBarIndicatorSize.tab,
                    
                  ),
                ),
              ),
            Expanded(child: TabBarView(children: [Mechrequesttt(),Mechaccepteddd(),]))


        ]),
      ),
    ));
  }
}