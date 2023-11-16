import 'package:flutter/material.dart';
import 'package:untitled12/eleclab/eleclab.dart';
import 'package:untitled12/netlab/netlab.dart';
import 'package:untitled12/softlab1/softlab1.dart';
import 'package:untitled12/softlab2/softlab2.dart';

class lab extends StatefulWidget {
  const lab({super.key});

  @override
  State<lab> createState() => _labState();
}

class _labState extends State<lab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Labratory"),
        ),
        body: Padding(
          padding: EdgeInsets.all(4.0),
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.computer)),
                title: Text(
                  "Software Lab-1",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Softlab1()));
                },
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.computer)),
                title: Text(
                  "Software Lab-2",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Softlab2()));
                },
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.network_check)),
                title: Text(
                  "Network Lab",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const netlab()));
                },
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.electric_bolt)),
                title: Text(
                  "Electronics Lab",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Eleclab()));
                },
              ),
            ],
          ),
        ));
  }
}
