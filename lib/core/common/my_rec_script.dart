import 'package:authenticate/core/common/widget.dart';
import 'package:authenticate/core/constant/constant.dart';
import 'package:authenticate/test.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegScript extends StatelessWidget {
  const RegScript({
    Key? key,
    required this.recText1,
    required this.recLog1,
  }) : super(key: key);

  final String recText1;
  final String recLog1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          recText1,
          style: kBodyText,
        ),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
           Get.back();
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              recLog1,
              style: kBodyText.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LogScript extends StatelessWidget {
  const LogScript({
    Key? key,
    required this.recText2,
    required this.recLog2,
  }) : super(key: key);

  final String recText2;
  final String recLog2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          recText2,
          style: kBodyText,
        ),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: () {
            Get.to(const Register());
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              recLog2,
              style: kBodyText.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
