

import 'package:authenticate/core/common/widget.dart';
import 'package:authenticate/core/constant/constant.dart';
import 'package:authenticate/test.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegScript extends StatelessWidget {
  const RegScript({
    Key? key,
    required this.recText,
    required this.recLog,
  }) : super(key: key);

  final String recText;
  final String recLog;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          recText,
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
              recLog,
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
    required this.recText,
    required this.recLog,
  }) : super(key: key);

  final String recText;
  final String recLog;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          recText,
          style: kBodyText,
        ),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, Register())
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              recLog,
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

