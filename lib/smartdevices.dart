// ignore_for_file: unused_import, prefer_const_constructors

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmartDevices extends StatelessWidget {
  final String smartdevicename;
  final String iconpath;
  final bool poweron;
  void Function(bool)? onChanged;

  SmartDevices({
    super.key,
    required this.smartdevicename,
    required this.iconpath,
    required this.poweron,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: poweron ? Colors.grey[900] : Colors.grey[300],
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(iconpath,
                  height: 35, color: poweron ? Colors.white : Colors.black),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      smartdevicename,
                      style: TextStyle(
                          fontSize: 20,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          color: poweron ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(
                    value: poweron,
                    onChanged: onChanged,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
