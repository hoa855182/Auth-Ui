

import 'package:flutter/material.dart';


class SignFb extends StatelessWidget {
  const SignFb({
    Key? key,
    required this.signT,
  }) : super(key: key);

  final String signT;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: FloatingActionButton.extended(
        onPressed: () {},
        icon: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/images/facebook.png',
            height: 48,
            width: 32,
          ),
        ),
        label: Text(signT),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.black,
      ),
    );
  }
}

class SignGG extends StatelessWidget {
  const SignGG({
    Key? key,
    required this.signT,
  }) : super(key: key);
  final String signT;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: FloatingActionButton.extended(
        onPressed: () {},
        icon: Image.asset(
          'assets/images/google.png',
          height: 32,
          width: 32,
        ),
        label: Text(signT),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}
