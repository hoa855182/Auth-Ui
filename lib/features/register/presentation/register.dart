import 'package:authenticate/core/constant/constant.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/common/widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool isPasswordVisible = true;
  bool passwordVisible = true;
  final PassController controller = Get.put(PassController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
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
                            
                            onTap: () {
                              controller.isPasswordVisible.value =
                                  !controller.isPasswordVisible.value;
                            }
                          ),
                          MyPassField(
                            hintText: 'Confirm Password',
                          
                            onTap: () {
                              controller.isPasswordVisible.value =
                                  !controller.isPasswordVisible.value;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
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
                      recText1: 'Already have an Account?',
                      recLog1: 'Sign In',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
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
