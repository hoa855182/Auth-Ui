// import 'package:authenticate/features/test.dart';

import 'package:flutter/material.dart';
import 'package:authenticate/core/common/widget.dart';

import 'package:google_fonts/google_fonts.dart';
import 'core/constant/constant.dart';
import 'features/welcome_page/presentation/welcome_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}


 
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Register',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: kBackgroundColor, 
      ),
      home: Row(
        children: [
          Flexible(
            child: WelcomePage()
          ),
          Flexible(
            child: Login()
          ),
          
        ],
      ),
    );
  }
}



