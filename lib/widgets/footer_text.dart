import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const FooterText({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xff70757a),
          ),
        ));
  }
}
