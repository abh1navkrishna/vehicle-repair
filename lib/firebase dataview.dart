import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Dataviewww extends StatefulWidget {
  Dataviewww({super.key, required this.docs});
  List<QueryDocumentSnapshot> docs;

  @override
  State<Dataviewww> createState() => _DataviewwwState();
}

class _DataviewwwState extends State<Dataviewww> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Data',
        style: TextStyle(fontSize: 30),
      )),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(widget.docs[index]["text1"]),
          subtitle: Column(children: [
            Text(widget.docs[index]["text2"]),
            Text(widget.docs[index]["text3"])
          ]),
          trailing: InkWell(
              onTap: () async {
                await (widget.docs);
              },
              child: Icon(Icons.delete)),
        ),
        itemCount: widget.docs.length,
      ),
    );
  }
}
