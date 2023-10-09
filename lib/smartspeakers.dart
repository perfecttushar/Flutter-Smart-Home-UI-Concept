// ignore_for_file: unused_import, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class Smartspeaker extends StatefulWidget {
  const Smartspeaker({super.key});

  @override
  State<Smartspeaker> createState() => _SmartspeakerState();
}

class _SmartspeakerState extends State<Smartspeaker> {
  double _currentvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Column(
          children: [
            Container(
              // alignment: Alignment.topCenter,
              height: 125,
              width: 400,
              color: Colors.grey[300],
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Smart Speaker",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Image.asset('lib/images/speaker.png', height: 30),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Volume : ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          _currentvalue.toInt().toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    activeColor: Colors.grey[900],
                    inactiveColor: Colors.grey,
                    min: 0,
                    max: 100,
                    value: _currentvalue,
                    onChanged: (value) {
                      setState(() {
                        _currentvalue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
