import 'package:flutter/material.dart';
import 'package:authenticate/core/constant/constant.dart';

class MyPassField extends StatelessWidget {
  const MyPassField({
    Key? key,
    required this.isPasswordVisible,
    required this.onTap,
    required this.hintText,
   
  }) : super(key: key);

  final String hintText;
  final bool isPasswordVisible;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          style: kBodyText.copyWith(color: Colors.white),
          obscureText: isPasswordVisible,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: onTap,
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  )),
            ),
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
