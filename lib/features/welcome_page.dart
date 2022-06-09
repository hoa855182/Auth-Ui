import 'package:authenticate/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/widget.dart';
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Image(
                              image: AssetImage(
                                  'assets/images/team_illustration.png'),
                            ),
                          ),
                        ),
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
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(18)),
                      child: Row(
                        children: [
                          Expanded(
                            child: MyTextButton(
                              bgColor: Colors.white,
                              buttonName: 'Register',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => Register(),
                                    ));
                              },
                              textColor: Colors.black87,
                            ),
                          ),
                          Expanded(
                            child: MyTextButton(
                              bgColor: Colors.transparent,
                              buttonName: 'Login',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) => Login(),
                                    ));
                              },
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


