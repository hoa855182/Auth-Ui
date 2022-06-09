import 'package:authenticate/core/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../../core/common/widget.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPasswordVisible = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        
      ),
      body: SafeArea(
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sign In",
                              style: kHeadline,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "To get Start",
                              style: kBodyText2,
                            ),
                            SizedBox(
                              height: 64,
                            ),
                            MyTextField(
                              hintText: 'Email Adress',
                              inputType: TextInputType.emailAddress,
                            ),
                            MyPassField(
                                hintText: 'Password',
                                isPasswordVisible: isPasswordVisible,
                                onTap: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                })
                          ]),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: 400,
                      child: MyTextButton(
                        buttonName: 'Sign In',
                        onTap: () {},
                        bgColor: Colors.white,
                        textColor: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: kBodyText,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: kBodyText.copyWith(color: Colors.white),
                            
                          ),
                        ),
                        
                        
                      ],
                      
                    ),
                    
                    
                    SizedBox(
                      width: 600,
                      height: 56,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/google.png',
                          height: 40,
                          width: 32,
                        ),
                        label: Text('Sign in with Google'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 32,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/facebook.png',
                          height: 40,
                          width: 32,
                        ),
                        label: Text('Sign in with FaceBook'),
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
