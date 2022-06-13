// import 'package:authenticate/features/test.dart';

import 'package:authenticate/test.dart';
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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
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
          // ElevatedButton(
          //   onPressed: () => Get.to(const Register()), // Passing data by using "arguments"
          //   child: const Text('Go to page One')
          // ),
        ],
      ),
    );
  }
}



