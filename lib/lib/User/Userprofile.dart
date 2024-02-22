import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
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
        ),
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection('userSignup').get(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasError){
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          final users = snapshot.data?.docs ?? [];

          return ListView(
            children: [
              CircleAvatar(
                backgroundColor: null,
                child:
                Image.asset('assets/Ellipse 1 (1).png', fit: BoxFit.fill),
                radius: 50,
              ),

            ],
          );
        }
      ),
    );
  }
}
