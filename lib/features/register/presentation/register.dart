import 'package:authenticate/core/constant/constant.dart';

import 'package:flutter/material.dart';

import '../../../core/common/widget.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isPasswordVisible = true;
  bool passwordVisible = true;
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
                            "Welcome to our Home",
                            style: kHeadline,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Lets get started",
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 32,
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
                            isPasswordVisible: passwordVisible,
                            onTap: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
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
                    const SizedBox(
                      height: 24,
                    ),
                    RegScript(
                      recText: 'Already have an Account?',
                      recLog: 'Sign In',
                    ),
                    SizedBox(
                      width: 600,
                      height: 56,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    SignGG(
                      signT: 'Sign up with Google',
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SignFb(
                      signT: 'Sign up with FaceBook',
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
