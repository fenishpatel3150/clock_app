import 'dart:async';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';
import 'package:clock_app/Digital_clock.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'World clock',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff121212),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.white, blurRadius: 5),
                  ],
                ),
                child: const Icon(
                  Icons.settings,
                  size: 20,
                )),
          ),
        ],
      ),
      backgroundColor: const Color(0xff121212),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10),
          Stack(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff262626),
                        boxShadow: [
                          BoxShadow(color: Colors.white, blurRadius: 5),
                        ],
                      ),
                    ),
                    ],
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    height: 220,
                    width: 220,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff424242),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 2),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        height: 130,
                        width: 130,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff2d2d2d),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Transform.rotate(
                              angle: (dateTime.minute * 6 * pi) / 180,
                              child: const VerticalDivider(
                                color: Colors.white,
                                indent: 15,
                                endIndent: 60,
                                thickness: 3,
                              ),
                            ),
                            Transform.rotate(
                              angle: (dateTime.hour % 12 * 30 * pi )/ 180+((6*pi/180)*(dateTime.minute/12)),
                              child: const VerticalDivider(
                                color: Colors.white,
                                indent: 30,
                                endIndent: 60,
                                thickness: 3.5,
                              ),
                            ),
                            Transform.rotate(
                              angle: (dateTime.second * 6 * pi )/ 180,
                              child: const VerticalDivider(
                                color: Colors.red,
                                indent: 10,
                                endIndent: 40,
                                thickness: 2,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Text(
            '${dateTime.day.toString().padLeft(2,'0')} - ${dateTime.month.toString().padLeft(2,'0')} - ${dateTime.year.toString().padLeft(2,'0')}',
            style:  TextStyle(color: Colors.white,fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              color: const Color(0xff424242),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            'London',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            '5 hrs 30 minis behind',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
               const  Text(
                  '2:33 ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Text(
                  'PM',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              color: const Color(0xff424242),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            'Sydney',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '5 hrs 30 minis behind',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  '5:00 ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Text(
                  'PM',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              color: const Color(0xff424242),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            'Moscow',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '5 hrs 30 minis behind',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  '1:01 ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Text(
                  'PM',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
