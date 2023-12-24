import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Admin%20mechanic.dart';
import 'package:vehicle_repair/Admin%20user.dart';

class Adminhomeee extends StatefulWidget {
  const Adminhomeee({super.key});

  @override
  State<Adminhomeee> createState() => _AdminhomeeeState();
}

class _AdminhomeeeState extends State<Adminhomeee> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xffE8F1FF),
          body: SafeArea(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 5),
                child: Row(
                  children: [
                    Image.asset('assets/Ellipse 1.png'),
                  ],
                ),
              ),

//==============================================================================================================

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,top: 30),
                child: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'User',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Mechanic',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    
                  ],
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff6EA3F3),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xff150B3D),
                  indicatorSize: TabBarIndicatorSize.tab,
                  
                ),
              ),

            Expanded(child: TabBarView(children: [Adminuserrr(),Adminmechaniccc(),]))

              
            ]),
          ),
        ));
  }
}
