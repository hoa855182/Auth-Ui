import 'dart:js';

import 'package:authenticate/core/constant/constant.dart';
import 'package:authenticate/features/dashboard/presentation/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}

class AppBars extends AppBar {
  AppBars()
      : super(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: kBackgroundColor,
          title: Text(
            "HOME PAGE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          elevation: 0.0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            PopupMenuButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text('this is notification 1'),
                    onTap: () {
                      Get.to(const Dashboard());
                    },
                  ),
                  PopupMenuItem(child: Text('this is notification 2')),
                  PopupMenuItem(child: Text('this is notification 3')),
                  PopupMenuItem(child: Text('this is notification 4')),
                ]),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        );
}
