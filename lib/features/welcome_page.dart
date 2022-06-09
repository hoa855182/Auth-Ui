import 'package:authenticate/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Flexible(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome",
                    style: kHeadline,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "Something really cool but i haven't firgure it out yet.",
                      style: kBodyText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Image(
                        image:
                            AssetImage('assets/images/team_illustration.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Login(),
            ),
          ],
        ),
      ),
    );
  }
}
