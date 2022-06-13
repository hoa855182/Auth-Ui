
import 'package:authenticate/core/constant/constant.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
