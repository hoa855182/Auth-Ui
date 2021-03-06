import 'package:flutter/material.dart';
import 'package:authenticate/core/constant/constant.dart';


class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
  }) : super(key: key);

  final String hintText;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          
          style: kBodyText.copyWith(color: Colors.white),
          keyboardType: inputType,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            hintText: hintText,
            hintStyle: kBodyText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}
