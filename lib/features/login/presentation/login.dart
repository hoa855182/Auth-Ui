import 'package:authenticate/core/constant/constant.dart';

import 'package:flutter/material.dart';



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
                            const  SizedBox(
                              height: 16,
                            ),
                            Text(
                              "To get Start",
                              style: kBodyText2,
                            ),
                            const SizedBox(
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
                    const SizedBox(
                      height: 24,
                    ),
                    LogScript(
                      recText: "Don't have an Account?",
                      recLog: "Sign Up",
                    ),
                    const SizedBox(
                      width: 600,
                      height: 56,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    SignGG(
                      signT: 'Sign in with Google',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SignFb(
                      signT: 'Sign in with FaceBook',
                    ),
                    const SizedBox(
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


