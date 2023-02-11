import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  List bankname = [
    "State Bank Of India",
    "HDFC Bank",
    "ICICI Bank",
    "Kotak Bank",
    "Bank Of Baroda",
    "Axix Bank",
    "Bank Of India",
  ];




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Color(0xff251B37),
          leading: Icon(Icons.all_inclusive,color: Color(0xffFFECEF),size: 30),
          centerTitle: true,
          title: Text("bankMine",style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 2,color: Color(0xffFFECEF)),),),
          actions: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: PopupMenuButton(color: Color(0xffFFECEF),itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Center(child: Text("Top3",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,),),),
                  ),
                  PopupMenuItem(
                    child: Center(child: Text("Private",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,),),),
                  ),
                  PopupMenuItem(
                    child: Center(child: Text("Government",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,),),),
                  ),

                ];
              },),
            ),
          ],
        ),
        body: Column(
          children: [
            
          ],
        ),
        backgroundColor: Color(0xfffdf0f1),
      ),
    );
  }

  Widget bankbox()
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff372948),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 10,),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,// Color(0xff372948),
              //child: Image.asset("assets/images/sbi1.png",fit: BoxFit.cover),
              backgroundImage: AssetImage("assets/images/sbi1.png",),
            ),
           // SizedBox(width: 10,),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("State Bank Of India",style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 2),),
                //Text("",style: GoogleFonts.aBeeZee(color: Color(0xffFFECEF),fontWeight: FontWeight.w500,letterSpacing: 2),),
              ],
            ),
            //SizedBox(width: 10,),
            Spacer(),
            InkWell(onTap: () {

            },child: Icon(Icons.rocket_launch,color: Colors.white,),),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}
