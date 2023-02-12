import 'package:bank_detail_with_url_package/detailScreen.dart';
import 'package:bank_detail_with_url_package/homescreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context)  => Homescreen(),
        'detail' : (context)  => Detailscreen(),
      },
    ),
  );
}