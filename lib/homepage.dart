// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, unused_field, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homely/smartdevices.dart';
import 'package:homely/smartspeakers.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List mySmartDevices = [
    ["Smart TV", "lib/images/tv.png", false],
    ["Smart Assist", "lib/images/google.png", false],
    ["Smart Lamp", "lib/images/lamp.png", false],
    ["Smart Fan", "lib/images/fan.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  double _currentvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'lib/images/menu.png',
                    height: 25,
                    color: Colors.grey[800],
                  ),
                  Image.asset(
                    'lib/images/user.png',
                    height: 25,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hey Tushar,',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Smart Devices',
                    style: TextStyle(fontSize: 23),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: mySmartDevices.length,
                padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                itemBuilder: (context, index) {
                  return SmartDevices(
                    smartdevicename: mySmartDevices[index][0],
                    iconpath: mySmartDevices[index][1],
                    poweron: mySmartDevices[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            ),
            Container(
              child: Smartspeaker(),
            )
          ],
        ),
      ),
    );
  }
}
