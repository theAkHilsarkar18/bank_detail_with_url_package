import 'package:bank_detail_with_url_package/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({Key? key}) : super(key: key);

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {


    Modeldata bank = ModalRoute.of(context)!.settings.arguments as Modeldata;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Color(0xff251B37),
          leading: InkWell(onTap: () {
            Navigator.pop(context);
          },child: Icon(Icons.arrow_back,color: Color(0xffFFECEF),size: 25)),
          centerTitle: true,
          title: Text("${bank.bName}",style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 2,color: Color(0xffFFECEF)),),),
          actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.all_inclusive,color: Color(0xffFFECEF),size: 30),
           ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffFFECEF),
                backgroundImage: AssetImage("${bank.bImage}",),
              ),
            ),
            SizedBox(height: 20,),
            Text("${bank.bName}",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 20),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(alignment: Alignment.centerLeft,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Branch : ",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,fontSize: 16),),
                      Text("${bank.bBranch}",style: GoogleFonts.aBeeZee(color: Color(0xff372948),letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 15),),
                    ],
                  ),),
                  SizedBox(height: 15,),
                  Align(alignment: Alignment.centerLeft,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("IFSC Code : ",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,fontSize: 16),),
                      Text("${bank.bifsc}",style: GoogleFonts.aBeeZee(color: Color(0xff372948),letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 15),),
                    ],
                  ),),
                  SizedBox(height: 15,),
                  Align(alignment: Alignment.centerLeft,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Toll Free : ",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,fontSize: 16),),
                      InkWell(onTap: () async{
                        await launchUrl(Uri.parse("tel:${bank.bTollFree}"));
                      },child: Text("${bank.bTollFree}",style: GoogleFonts.aBeeZee(color: Color(0xff372948),letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 15),)),
                    ],
                  ),),
                  SizedBox(height: 15,),
                  Align(alignment: Alignment.centerLeft,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email : ",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,fontSize: 16),),
                      InkWell(onTap: () {
                        launchUrl(Uri.parse("mailto:${bank.bEmail}?subject=Account Opening&body=Dear%20Sir/Madam,"));
                      },child: Text("${bank.bEmail}",style: GoogleFonts.aBeeZee(color: Color(0xff372948),letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 15),)),
                    ],
                  ),),
                  SizedBox(height: 15,),
                  Align(alignment: Alignment.centerLeft,child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Website : ",style: GoogleFonts.aBeeZee(color: Color(0xff251B37),letterSpacing: 2,fontWeight: FontWeight.w500,fontSize: 16),),
                      InkWell(onTap: () {
                        launchUrl(Uri.parse("${bank.website}"));
                      },child: Text("${bank.website}",style: GoogleFonts.aBeeZee(color: Color(0xff372948),letterSpacing: 2,fontWeight: FontWeight.w600,fontSize: 15),)),
                    ],
                  ),),


                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xfffdf0f1),
      ),
    );
  }
}
