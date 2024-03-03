import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Digital_clock extends StatefulWidget {
  const Digital_clock({super.key});

  @override
  State<Digital_clock> createState() => _Digital_clockState();
}
DateTime dateTime=DateTime.now();

class _Digital_clockState extends State<Digital_clock> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime=DateTime.now();

      });
    });
    return Scaffold(

      appBar: AppBar(
        title: Text('Digital clock',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff121212),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(color: Colors.white,blurRadius: 5),
                  ],
                ),
                child: Icon(Icons.settings,size: 20,)),
          ),
        ],
      ),
      backgroundColor: Color(0xff121212),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Container(
                  height:200,
                width: 300,
                child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${dateTime.hour.toString().padLeft(2, '0')} : ${dateTime.minute.toString().padLeft(2,'0')} : ${dateTime.second.toString().padLeft(2,'0')}',style: TextStyle(color: Colors.white,fontSize: 30),),
                    SizedBox(width: 10,),
                    Text((dateTime.day >= 12)?'AM':'PM',style: TextStyle(color: Colors.white,fontSize: 30),),
                  ],
                ))),),
            SizedBox(height: 30,),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xff424242),
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
                            padding: EdgeInsets.only(left: 15,top: 10),
                            child: Text('London',style: GoogleFonts.poppins(color: Colors.white,fontSize: 25, ),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text('5 hrs 30 minis behind',style: TextStyle(color: Colors.white,fontSize: 8,),),
                          ),
                        ],
                      ),
        
                    ],
                  ),
                  SizedBox(width: 80,),
                  Text('2:33 ',style: TextStyle(fontSize: 30,color: Colors.white),),
                  Text('AM',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xff424242),
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
                            padding: EdgeInsets.only(left: 15,top: 10),
                            child: Text('Canada',style: GoogleFonts.poppins(color: Colors.white,fontSize: 25, ),),
                          ),
                        ],
                      ),
                      Row(
        
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 15),
                            child: Text('5 hrs 30 minis behind',style: TextStyle(color: Colors.white,fontSize: 8,),),
                          ),
                        ],
                      ),
        
                    ],
                  ),
                  SizedBox(width: 50,),
                  Text('5:00 ',style: TextStyle(fontSize: 30,color: Colors.white),),
                  Text('PM',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xff424242),
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
                            padding: EdgeInsets.only(left: 15,top: 10),
                            child: Text('Moscow',style: GoogleFonts.poppins(color: Colors.white,fontSize: 25, ),),
                          ),
                        ],
                      ),
                      Row(
        
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 15),
                            child: Text('5 hrs 30 minis behind',style: TextStyle(color: Colors.white,fontSize: 8,),),
                          ),
                        ],
                      ),
        
                    ],
                  ),
                  SizedBox(width: 70,),
                  Text('1:01 ',style: TextStyle(fontSize: 30,color: Colors.white),),
                  Text('PM',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xff424242),
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
                            padding: EdgeInsets.only(left: 15,top: 10),
                            child: Text('Sydney',style: GoogleFonts.poppins(color: Colors.white,fontSize: 25, ),),
                          ),
                        ],
                      ),
                      Row(
        
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 15),
                            child: Text('5 hrs 30 minis behind',style: TextStyle(color: Colors.white,fontSize: 8,),),
                          ),
                        ],
                      ),
        
                    ],
                  ),
                  SizedBox(width: 80,),
                  Text('4:01 ',style: TextStyle(fontSize: 30,color: Colors.white),),
                  Text('AM',style: TextStyle(fontSize: 15,color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
