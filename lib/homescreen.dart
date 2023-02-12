import 'dart:io';

import 'package:bank_detail_with_url_package/model.dart';
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

  List bankimg = [
    "assets/images/sbi1.png",
    "assets/images/hdfc.png",
    "assets/images/icic.png",
    "assets/images/kotak.png",
    "assets/images/bob.png",
    "assets/images/axis.png",
    "assets/images/boi.png",
  ];

  List bankTollFreeNumber = [
    "1800 1231",
    "1800 1232",
    "1800 1233",
    "1800 1234",
    "1800 1235",
    "1800 1236",
    "1800 1237",
  ];

  List bankEmail = [
    "agmcustomer.lhoahm@sbi.co.in",
    "agmcustomer.lhoahm@hdfc.co.in",
    "agmcustomer.lhoahm@icici.co.in",
    "agmcustomer.lhoahm@kotak.co.in",
    "agmcustomer.lhoahm@bob.co.in",
    "agmcustomer.lhoahm@axis.co.in",
    "agmcustomer.lhoahm@boi.co.in",
  ];

  List bankIFSC = [
    "SBIN0000488",
    "HDFC0000488",
    "ICICI000488",
    "KOTAK000488",
    "BOBNN000488",
    "AXISS000488",
    "BOIBO000488",
  ];

  List bankWebsite = [
    "https://sbi.co.in/",
    "https://sbi.co.in/",
    "https://www.icicibank.com/",
    "https://www.kotak.com/en/home.html",
    "https://www.bankofbaroda.in/",
    "https://www.axisbank.com/",
    "https://bankofindia.co.in/",
  ];

  List bankBranch = [
    "LH Road,Surat",
    "Punagam,Surat",
    "Kamrej,Surat",
    "Kapodra,Surat",
    "Katargam,Surat",
    "Nana Varachha,Surat",
    "AK Road,Surat",
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
          title: Text("bankMine",style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 2,color: Color(0xffFFECEF),),),),
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
            Container(
              height: 708,
              width: double.infinity,
              child: ListView.builder(itemBuilder: (context, index) {
                return bankbox(bankname[index], bankimg[index], bankBranch[index],bankIFSC[index],bankTollFreeNumber[index],bankEmail[index],bankWebsite[index]);
              },physics: BouncingScrollPhysics(),
                itemCount: bankname.length,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xfffdf0f1),
      ),
    );
  }

  Widget bankbox(String bankName , String bankImg , String branch, String ifsc , String toll ,String email,String website)
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
              backgroundColor: Color(0xff372948),
              //child: Image.asset("assets/images/sbi1.png",fit: BoxFit.cover),
              backgroundImage: AssetImage("${bankImg}",),
            ),
           // SizedBox(width: 10,),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${bankName}",style: GoogleFonts.aBeeZee(color: Color(0xffFFECEF),fontWeight: FontWeight.w500,letterSpacing: 2),),
                //Text("",style: GoogleFonts.aBeeZee(color: Color(0xffFFECEF),fontWeight: FontWeight.w500,letterSpacing: 2),),
              ],
            ),
            //SizedBox(width: 10,),
            Spacer(),
            InkWell(onTap: () {

              setState(() {

                Modeldata bank = Modeldata(bName: bankName,bImage: bankImg,bBranch: branch , bifsc: ifsc , bTollFree: toll , bEmail: email,website: website);

                Navigator.pushNamed(context, 'detail',arguments: bank);

              });


            },child: Icon(Icons.rocket_launch,color: Color(0xffFFECEF),),),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}
