import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Admin%20add%20notification.dart';

class Adminnotiii extends StatefulWidget {
  const Adminnotiii({super.key});

  @override
  State<Adminnotiii> createState() => _AdminnotiiiState();
}

class _AdminnotiiiState extends State<Adminnotiii> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE8F1FF),
      appBar: AppBar(
        backgroundColor: Color(0xffE8F1FF),
        title: Image.asset('assets/Ellipse 1.png'),
      ),
      body: Stack(
        children: [
          FutureBuilder(
            future: FirebaseFirestore.instance.collection('notifications').get(),
            builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if(snapshot.hasError){
                return Center(child: Text('Error: ${snapshot.error}'),);
              }
              final adminniti=snapshot.data?.docs??[];
            
            return ListView.builder(
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Container(
                    width: double.infinity,
                    height: 110,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                             adminniti[index]['matter']
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              adminniti[index]['content']
                            ),
                          ]),
                    ),
                  ),
                );
              }),
              itemCount: adminniti.length
            );
            }
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30,bottom: 30),
            child: Align(alignment: Alignment.bottomRight,
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: 
                (context) {
                  return Adminaddnotiii();
                },));
              },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(
                  side: BorderSide(
                      width: 0.20,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xBF2357D9),
                  ),
                      ),
                      shadows: [
                  BoxShadow(
                      color: Color(0xB22357D9),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                      spreadRadius: 1,
                  )
                      ],
                  ),
                  child: Icon(Icons.add,color: Color(0xBF2357D9),size: 50,),
                          ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
