import 'package:authenticate/constant.dart';
import 'package:authenticate/features/test.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../widget/widget.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isPasswordVisible = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   // icon: SvgPicture.asset(
        //   //   "assets/images/back_arrow.svg.svg",
        //   //   color: Colors.white,
        //   //   width: 24
        //   // ),
        //   icon: SvgPicture.asset(
        //     'assets/images/back_arrow.svg',
        //     color: Colors.white,
        //     width: 24,
        //   ),
        // )
      ),
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to our Home",
                              style: kHeadline,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lets get started",
                              style: kBodyText2,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            
                            MyTextField(
                              hintText: 'User Name',
                              inputType: TextInputType.name,
                            ),
                            MyTextField(
                              hintText: 'Email Adress',
                              inputType: TextInputType.emailAddress,
                            ),
                            MyTextField(
                              hintText: 'Phone',
                              inputType: TextInputType.phone,
                            ),
                            MyPassField(
                              hintText: 'Password',
                              isPasswordVisible: isPasswordVisible,
                              onTap: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                            ),
                            MyPassField(
                            hintText: 'Confirm Password',
                            isPasswordVisible: isPasswordVisible,
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                          ],
                        ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 400,
                      child: MyTextButton(
                        buttonName: 'Sign Up',
                        onTap: () {},
                        bgColor: Colors.white,
                        textColor: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: kBodyText,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Sign in",
                            style: kBodyText.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 600,
                      height: 50,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/google.png',
                          height: 42,
                          width: 32,
                        ),
                        label: Text('Sign Up with Google'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 30,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/facebook.png',
                          height: 42,
                          width: 32,
                        ),
                        label: Text('Sign Up with FaceBook'),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
