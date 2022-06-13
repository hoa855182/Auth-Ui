import 'package:authenticate/core/constant/constant.dart';
import 'package:authenticate/features/home_page/presentation/home_page.dart';
import 'package:authenticate/test.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../core/common/widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  final PassController controller = Get.put(PassController());
  @override
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
                            const SizedBox(
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
                              
                              onTap: () {
                                controller.isPasswordVisible.value =
                                    !controller.isPasswordVisible.value;
                              }
                            )
                          ]
                        ),
                      ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: MyTextButton(
                        buttonName: 'Sign In',
                        onTap: () {
                          // Get.to(const Home());
                          Get.to(const Home());
                        },
                        bgColor: Colors.white,
                        textColor: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    LogScript(
                      recText2: "Don't have an Account?",
                      recLog2: "Sign Up",
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
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
